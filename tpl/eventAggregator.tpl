[[$head]]

	<div class="grid">
		<div class="grid__item  one-whole desk-six-tenths lap-six-tenths">

			<div id="main" role="main">

				<h1 class="page-title">[[*longtitle:is=``:then=`[[*pagetitle]]`:else=`[[*longtitle]]`]]</h1>

				[[*content]]

				[[getResources?
					&parents=`0`
					&depth=`1`
					&sortby=`menuindex`
					&sortdir=`DESC`
					&limit=`50`
					&offset=`1`
					&sortdir=`ASC`
					&where=`{"template:=":4}`

					&tpl=`@FILE grEvent.tpl`
					&tplPath=`[[++assets_path]]/tpl/chunks/`
					&toPlaceholder=`results`

					&showHidden=`1`
					&hideContainers=`0`
				]]

				[[+results]]

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