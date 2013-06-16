[[$head]]

	<div class="grid">
		<div class="grid__item  one-whole desk-six-tenths lap-six-tenths">

			 <article id="main" role="main">

				<header class="page-title speaker-heading">
					<h1 class="speaker-heading__name">[[*longtitle:isempty=`[[*pagetitle]]`]]</h1>
					[[*talkJob:notempty=`<span class="speaker-heading__description">[[*talkJob]]</span>`]]
					<h2 class="speaker-heading__title">[[*talkTitle]]</h2>
				</header>

			[[*talkYoutube:notempty=`
				<div class="video-container">
					<iframe src="http://www.youtube.com/embed/[[*talkYoutube]]?rel=0&amp;autohide=1&amp;showinfo=0&amp;color=white" frameborder="0" allowfullscreen></iframe>
				</div>
			`]]

				[[*content]]

			[[*talkBio:isnt=``:then=`
				<div class="media media--reduced">
					<h2 class="media__heading">Speaker bio</h2>
	
					[[*talkImage:notempty=`<img src="[[*talkImage:phpthumbof=`w=120&h=120&zc=1&f=jpg`]]" alt="[[*pagetitle]] thumbnail" class="speaker-bio-img" />
					`]]
	
					[[*talkBio]]

					[[*talkFurther:notempty=`
						<h2>Further details</h2>
				
						[[*talkFurther]]
					`]]

				</div>
				
			`:else=`
				[[*talkFurther:notempty=`
				<div class="media media--reduced">
					<h2[[*talkBio:isempty=` class="media__heading"`]]>Further details</h2>
				
					[[*talkFurther]]
				</div>
				`]]
			`]]
	
			[[getResources?
				&parents=`[[*parent]]`
				&resources=`-[[*id]]`
				&depth=`1`
				&sortby=`menuindex`
				&sortdir=`ASC`
				&limit=`99`
				&where=`{"template:=":2}`
		
				&tpl=`@FILE grSpeakersGrid.tpl`
				&tplPath=`[[++assets_path]]/tpl/chunks/`
				&toPlaceholder=`results`
		
				&showHidden=`1`
				&includeTVs=`1`
			]]

				[[+results:notempty=`<div class="grid-container is-grid">
				
					<h2>This year's other speakers:</h2>
				
					<ul class="nav nav--stacked grid-container__list">
						[[+results]]
					</ul>
				
					<ul class="nav grid-container__control">
						<li class="grid-container__control-list"><i class="icon icon--th-list"></i></li>
						<li class="grid-container__control-grid is-active"><i class="icon icon--th-large"></i></li>
					</ul>
				
				</div>`]]

			</article>

		</div><!--
		--><div class="grid__item  one-whole desk-three-tenths push--desk-one-tenth lap-four-tenths">

[[$nav]]

			<aside class="sidebar">

[[$aside]]

			</aside>

		</div>
	</div>

[[$footer]]