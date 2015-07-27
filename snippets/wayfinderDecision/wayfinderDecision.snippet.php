<?php
/*
	wayfinderDecision - Decides what Wayfinder call to serve, based on tpl and newness of document - to 'spoof' navigation
	By Ian Parr - http://devolute.net
*/


$resourceId = $modx -> resource -> get('id');
$resourceTemplate = $modx -> resource -> get('template');
$resourceParent = $modx -> resource -> get('parent');

$wayfinderHereId = null;
$wayfinderLevel = 2;

// Change this every year
$thisYearId = 85;

$result = null;

// If page likely to need navigation cheat - i.e. is speaker or event tpl
if ( $resourceTemplate === 4 || $resourceTemplate === 2 ) {

	// if latest page OR parent is latest page
	if ( $resourceId === $thisYearId || $resourceParent === $thisYearId ) {

		// ...then hereId itself
		$wayfinderHereId = $thisYearId;
		// and only show top level
		$wayfinderLevel = 1;

	// must be a normal archived year
	} else {

		// determine if this is at the top of the tree
		if ( $resourceParent == 0 ) {

			$partnerAlias = $modx -> resource -> get('alias');

		// we must be a child within the year resource
		} else {

			// find alias so we know which weblink to highlight
			$partnerAlias = $modx -> resource -> getOne('Parent') -> get('alias');

		}

		// find weblink that matches it
		$matchingWeblink =  $modx->getObject('modResource',array(
			'alias' => $partnerAlias,
			'class_key' => 'modWebLink'
		));

		$wayfinderHereId = $matchingWeblink->get('id');

	}
}

$result = $modx->runSnippet('Wayfinder', array(
	'startId' => '0',
	'level' => $wayfinderLevel,
	'hideSubMenus' => 'TRUE',
	'outerTpl' => 'wfOuterTpl',
	'innerTpl' => 'wfInnerTpl',
	'rowTpl' => 'wfRowTpl',
	'hereClass' => 'is-here',
	'selfClass' => 'is-active',
	'hereId' => $wayfinderHereId
));

return $result;
