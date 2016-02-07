$(document).ready(function(){
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
		if(e.keyCode == 38){
			if(current == 1)
				current = 5;
			else
				current--;
		}
		if(e.keyCode == 40){
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
});