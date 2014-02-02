[[$head]]

	<div class="grid">
		<div class="grid__item  one-whole desk-six-tenths lap-six-tenths">

			<div id="main" role="main">

				<h1 class="page-title">[[*longtitle:is=``:then=`[[*pagetitle]]`:else=`[[*longtitle]]`]]</h1>

				[[*content]]

				[[getResources?
					&depth=`1`
					&sortby=`menuindex`
					&sortdir=`ASC`
					&limit=`99`
					[#&where=`{"class_key:!=":"modWebLink"}`#]

					&tpl=`@FILE grSpeakers.tpl`
					&tplPath=`[[++assets_path]]/tpl/chunks/`

					&includeContent=`1`
					&includeTVs=`1`
				]]

				[[$sponsors[[*alias]]]]

			</div>

		</div><!--
		--><div class="grid__item  one-whole desk-three-tenths push--desk-one-tenth lap-four-tenths">

[[$nav]]

			<aside class="sidebar">

[[$aside]]

			</aside>

		</div>
	</div>

[[$footer]]