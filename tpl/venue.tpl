[[$head]]

	<div class="grid">
		<div class="grid__item  one-whole">

			<div class="poster poster--map">
	
				<div class="poster__heading">
					[[*longtitle]]

					<form action="http://maps.google.co.uk/maps" method="get">
						<label for="gMapSearch" class="compact-form__placeholder-label">Enter address to get location</label>

						<div class="compact-form">
							<div class="compact-form__cell">
								<input type="text" name="saddr" placeholder="Get directions from&hellip;" class="compact-form__field" />
							</div>
							<input type="hidden" name="daddr" value="45 Surrey St, Sheffield, South Yorkshire S1 2LG" />
							<div class="compact-form__cell">
								<button id="gMapSearch" type="submit" value="OK" class="btn">
									<i class="icon icon--direction"></i>
									Go
								</button>
							</div>
						</div>

					</form>
				</div>

			</div>

		    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>

		</div>
	</div>

</div>

<div class="google-map">

	<div id="gMap" class="google-map__container"></div>

</div>

<div class="container">

	<div class="grid">
		<div class="grid__item  one-whole desk-six-tenths lap-six-tenths">

			<div id="main" role="main">

[[*content]]

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