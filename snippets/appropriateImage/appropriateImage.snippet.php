<?php
/*
	appropriateImage - Outputs a thumbnail based if appropriate thumbnail is available
	Depends on: pThumb w/ Resizer (or similar - untested)
				Specific tvs
	By Ian Parr - http://devolute.net
*/

$resource = $modx->getObject('modResource', $id);
$tvTalkYoutube = $resource -> getTVValue('talkYoutube');
$tvTalkImage = $resource -> getTVValue('talkImage');
$tvTalkPoster = $resource -> getTVValue('talkPoster');

//$videoClass = null;
$videoClass = 'speaker__thumb';
$phpthumbOptions = 'w=150&h=150&zc=1&f=jpg';
$useYoutubeThumb = false;
$bestImage = '/assets/img/bg/default-img-grey.png';
$output = null;


// Is in grid mode?
if ( $mode === 'grid' ) {

	$phpthumbOptions = 'w=150&h=110&zc=1&f=jpg';

}


// Use best available image as thumbnail
if ( !empty($tvTalkPoster) ) {

	$bestImage = $tvTalkPoster;

} elseif ( !empty($tvTalkImage) ) {

	$bestImage = $tvTalkImage;

} elseif ( !empty($tvTalkYoutube) ) {

	$useYoutubeThumb = true;
	$bestImage = $tvTalk;
	// Grid mode or not?
//	if ( $mode === 'grid' ) {
//		$videoClass .= ' speaker-grid__thumb--youtube';
//	} else {
		$videoClass .= ' speaker__thumb--youtube';
//	}

}


// If video available REMOVED because I can't :before a video
/*if ( !empty($tvTalkYoutube) ) {

	$videoClass .= ' is-video';

}*/


// Assemble image w/ pThumb
if ( $useYoutubeThumb == true ) {

	$image = 'http://img.youtube.com/vi/' . $tvTalkYoutube . '/1.jpg';

} else {

	$image = $modx->runSnippet('pthumb', array(
		'input' => $bestImage,
		'options' => $phpthumbOptions
	));

}


$output = '<div class="' . $videoClass . '">
	<img src="' . $image . '" alt="[[+pagetitle]] thumbnail" />
</div>';

return $output;
