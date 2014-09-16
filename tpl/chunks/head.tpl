<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
[[*id:is=`[[++site_start]]`:then=`
	<title>[[*longtitle:striptags:isempty=`[[*pagetitle:striptags]]`]]</title>`:else=`
	<title>[[*longtitle:striptags:isempty=`[[*pagetitle:striptags]]`]] | [[++site_name]]</title>`]]

	<meta name="description" content="[[*description:is=``:then=`[[*content:strip:stripString=`"`:striptags:ellipsis=`155`:isempty=`[[*talkBio:strip:stripString=`"`:striptags:ellipsis=`155`]]`]]`:else=`[[*description]]`]]" />
	<meta name="author" content="">
	<meta name="viewport" content="width=device-width,initial-scale=1">

	<meta property="og:url" content="[[*id:is=`[[++site_start]]`:then=`[[++site_url]]`:else=`[[++site_url]][[*uri]]`]]">
	<meta property="og:title" content="[[*longtitle:striptags:isempty=`[[*pagetitle:striptags]]`]] - [[++site_name]]">
	<meta property="og:description" content="[[*description:is=``:then=`[[*content:strip:stripString=`"`:striptags:ellipsis=`350`:isempty=`[[*talkBio:strip:stripString=`"`:striptags:ellipsis=`350`]]`]]`:else=`[[*description]]`]]">
[[*talkYouTube:is=``:then=`	<meta name="twitter:card" content="summary">
	<meta property="og:image" content="[[++site_url]]assets/img/ted-logo-200-200.png">`:else=`
	<meta property="og:type" content="video">
	<meta property="og:image" content="http://i3.ytimg.com/vi/[[*talkYouTube]]/mqdefault.jpg?feature=og">
	<meta property="og:video" content="http://www.youtube.com/v/[[*talkYouTube]]?version=3&amp;autohide=1">
	<meta property="og:video:type" content="application/x-shockwave-flash">
	<meta property="og:video:width" content="853">
	<meta property="og:video:height" content="480">
	<meta property="og:site_name" content="[[++site_name]]">
	<meta name="twitter:card" content="player">
	<meta name="twitter:player" content="https://www.youtube.com/embed/[[*talkYouTube]]">
	<meta name="twitter:player:width" content="853">
	<meta name="twitter:player:height" content="480">`]]
	<meta name="twitter:site" content="@TEDxSheffield">
	<meta name="twitter:title" content="[[*longtitle:striptags:isempty=`[[*pagetitle:striptags]]`]]">
	<meta name="twitter:description" content="[[*description:is=``:then=`[[*content:strip:stripString=`"`:striptags:ellipsis=`350`:isempty=`[[*talkBio:strip:stripString=`"`:striptags:ellipsis=`200`]]`]]`:else=`[[*description]]`]]">

	<base href="[[++site_url]]" />

	<link rel="stylesheet" href="assets/css/style.min.css?v=140814">
	<script src="assets/js/vendor/modernizr.custom.62825.js"></script>
	<link type="text/plain" rel="author" href="http://tedxsheffield.com/humans.txt">
</head>

<body[[*id:is=`[[++site_start]]`:then=` class="is-page--home"`]][[*template:is=`4`:or:is=`2`:then=` class="is-page--[[*alias]]"`]]>

<div class="container">

	<header class="header">

		<div class="grid">
			<div class="grid__item  seven-tenths">

				<div class="primary-logo">
					[[*id:is=`[[++site_start]]`:then=`<img src="assets/img/tedx-sheffield-logo.min.svg" alt="TEDxSheffield logo" class="primary-logo__img" />
					<h1 class="primary-logo__text">[[++site_name]]</h1>`:else=`<a href="[[++site_url]]">
						<img src="assets/img/tedx-sheffield-logo.min.svg" alt="TEDxSheffield logo" class="primary-logo__img" />
						<span class="primary-logo__text">[[++site_name]]</span>
					</a>`]]
				</div>

			</div><!--
			--><div class="grid__item  three-tenths">

				<a id="top">Top of page content</a>

				<a href="[[~[[*id]]]]#nav" id="menu" class="btn btn--inline">
					<span id="menu__text">Menu</span>
					<i class="icon icon--menu"></i>
				</a>

			</div>
		</div>

	</header>
