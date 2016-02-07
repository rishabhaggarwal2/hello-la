// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

var ready;
ready = function() {

  //attraction show logic
  var background_image_url = $('.floating-name').attr("data-image");
  $('.floating-name').css('background-image','url(../assets/' + background_image_url + ')');

  var controller = new ScrollMagic.Controller({
		globalSceneOptions: {
			triggerHook: 'onLeave'
		}
	});

	// get all slides
	var slides = document.querySelectorAll("section");

	// create scene for every slide
	for (var i=0; i<slides.length; i++) {
		new ScrollMagic.Scene({
				triggerElement: slides[i]
			})
			.setPin(slides[i])
			.addTo(controller);
	}

  //homepage logic
  var categories = {
		1: {
			"first":"Eat",
			"second":"Explore",
			"third":"Learn",
			"fourth":"Shop",
			"fifth":"Party"
		},
		2: {
			"first":"Explore",
			"second":"Learn",
			"third":"Shop",
			"fourth":"Party",
			"fifth":"Eat"
		},
		3: {
			"first":"Learn",
			"second":"Shop",
			"third":"Party",
			"fourth":"Eat",
			"fifth":"Explore"
		},
		4: {
			"first":"Shop",
			"second":"Party",
			"third":"Eat",
			"fourth":"Explore",
			"fifth":"Learn"
		},
		5: {
			"first":"Party",
			"second":"Eat",
			"third":"Explore",
			"fourth":"Learn",
			"fifth":"Shop"
		}
	};
	var current = 1;
	$("b.sexy").attr('data-first',categories[current].first);
	$("b.sexy").attr('data-fifth',categories[current].fifth);
	$("span.sexy").attr('data-second',categories[current].second);
	$("span.sexy").attr('data-fourth',categories[current].fourth);
	$("span.sexy").html(categories[current].third + "?");
	var selector = ".category."+categories[current].third;
	$(selector).addClass("sexy");
	$(window).keyup(function(e) {
		console.log(e.keyCode);
		if(e.keyCode == 38 || e.keyCode == 37){
			if(current == 1)
				current = 5;
			else
				current--;
		}
		if(e.keyCode == 40 || e.keyCode == 39){
			if(current == 5)
				current = 1;
			else
				current++;
		}
		if(e.keyCode == 13){
			$("section").fadeOut("fast");
			var linkThis = categories[current].third;
			linkThis = linkThis.toLowerCase();
			window.location=('/categories/'+linkThis);
		}
		// $("b.sexy").fadeOut(200);
	  $("b.sexy").attr('data-first',categories[current].first);
	  $("b.sexy").attr('data-fifth',categories[current].fifth);
	  $("span.sexy").attr('data-second',categories[current].second);
	  $("span.sexy").attr('data-fourth',categories[current].fourth);
	  $("span.sexy").html(categories[current].third + "?");
	  // $("b.sexy").fadeIn(200);
	  selector = ".category."+categories[current].third;
	  $(".category").removeClass("sexy");
	  $(selector).addClass("sexy");
	});
}

$(document).ready(ready);
$(document).on("page:load",ready);
