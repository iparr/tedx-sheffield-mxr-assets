		<article class="speaker[[+tv.talkYoutube:notempty=` is-video`]]">
			<a href="[[~[[+id]]]]" class="speaker__link">

				<h2 class="speaker__title">
					<span class="speaker__name">[[+pagetitle]]</span>
					[[+tv.talkTitle:notempty=`<span class="speaker__talk-title">[[+tv.talkTitle]] </span>`]]
					[[+tv.talkJob:notempty=`<span class="speaker__description">[[+tv.talkJob]]</span>`]]
				</h2>

				[[appropriateImage? id=`[[+id]]`]]

			</a>
			<div class="speaker__details">
				<p>
					[[+content:striptags:ellipsis=`450`:isempty=`[[+tv.talkBio:striptags:ellipsis=`450`]]`]]
				</p>
			</div>
		</article>
