[[getResources?
	&parents=`72`
	&depth=`1`
	&sortby=`menuindex`
	&sortdir=`ASC`
	&limit=`99`

	&tpl=`@FILE grSpeakersGrid.tpl`
	&tplPath=`[[++assets_path]]/tpl/chunks/`
	&toPlaceholder=`results`

	&includeTVs=`1`
]]


[[+results:notempty=`<div class="grid-container is-grid">

	<h2>Our speakers</h2>

	<ul class="nav nav--stacked grid-container__list">
		[[+results]]
	</ul>

	<ul class="nav grid-container__control">
		<li class="grid-container__control-list"><i class="icon icon--th-list"></i></li>
		<li class="grid-container__control-grid is-active"><i class="icon icon--th-large"></i></li>
	</ul>

</div>`]]
