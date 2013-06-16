<section class="grid-container is-grid">

	<h2>
		<a href="[[~[[+id]]]]">[[+pagetitle]]</a>
	</h2>

	[[getResources?
		&parents=`[[+id]]`
		&depth=`2`
		&sortby=`menuindex`
		&sortdir=`ASC`
		&limit=`99`
		&where=`{"template:=":2, "AND:class_key:!=":"modWebLink"}`

		&tpl=`@FILE grSpeakersGrid.tpl`
		&tplPath=`[[++assets_path]]/tpl/chunks/`
		&toPlaceholder=`innerResults`

		&showHidden=`1`
		&includeTVs=`1`
	]]

	[[+innerResults:notempty=`
	<ul class="nav nav--stacked grid-container__list">
		[[+innerResults]]
	</ul>`]]

	<a href="[[~[[+id]]]]" class="btn"><i class="icon icon--users"></i> View [[+alias]]'s details</a>

	<ul class="nav grid-container__control">
		<li class="grid-container__control-list"><i class="icon icon--th-list"></i></li>
		<li class="grid-container__control-grid is-active"><i class="icon icon--th-large"></i></li>
	</ul>

</section>