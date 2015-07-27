/*
	Author:
		Ian Parr for TEDx Sheffield 2012/13

	ToC:
	- Navigation display
	- Thumbnail / list switcher
	- Google map

*/

$(document).ready(function() {

	// =Navigation display
	$('#menu').on('click', function(e) {

		e.preventDefault();

		// Has nav been duped?
		if ($('#nav--dupe').length == 0) {

			// Move to the right place
			var navCopy = $('#nav').clone(true);
			navCopy.attr('id', 'nav--dupe');
			$('.header').after( navCopy );

		}

		$('#menu').toggleClass('is-active');

		$('#nav--dupe').slideToggle();

	});


	// =Thumbnail / list switcher
	if ($('.grid-container').length>0) {

		// If active, don't do anything
		$('.grid-container__control li').on('click', function() {

			var activeControl = $(this);

			if ( $(this).is('.is-active') ) {

				return false;

			} else {

				// remove active class
				activeControl.siblings('.is-active').removeClass('is-active');

				if ( activeControl.is('.grid-container__control-grid') ) {

					// is grid control
					activeControl
						.addClass('is-active')
						.closest('.grid-container')
						.addClass('is-grid');

				} else {

					// is NOT grid control, so list
					activeControl
						.addClass('is-active')
						.closest('.grid-container')
						.removeClass('is-grid');

				}

				return;

			}

		});

	}

	// =Google map
	function eventMap() {
		var mapOptions = {
			zoom: 15,
			center: new google.maps.LatLng(53.3810614,-1.4667874),
			disableDefaultUI: true,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		}
		var map = new google.maps.Map(document.getElementById('gMap'), mapOptions);

		setMarkers(map, points);
	}

	/**
	* Data for the markers consisting of a name, a LatLng and a zIndex for
	* the order in which these markers should display on top of each
	* other.
	*/
	var points = [
		['Crucible Theatre', 53.3810614, -1.4667874, 0]
	];

	function setMarkers(map, locations) {
        // Add markers to the map

        // Marker sizes are expressed as a Size of X,Y
        // where the origin of the image (0,0) is located
        // in the top left of the image.

        // Origins, anchor positions and coordinates of the marker
        // increase in the X direction to the right and in
        // the Y direction down.

		for (var i = 0; i < locations.length; i++) {
			var point = locations[i];
			var myLatLng = new google.maps.LatLng(point[1], point[2]);
			var marker = new google.maps.Marker({
				position: myLatLng,
				map: map,
//				icon: image,
				title: point[0]
			});
		}
	}

	if ($('#gMap').length>0) {
		eventMap();
	}

});
