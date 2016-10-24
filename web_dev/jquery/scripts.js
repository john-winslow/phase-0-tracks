console.log("It is working!");

// test out some jquery

// hide all <p> elements:
// $("p").hide();

// hide the header when button clicked:
$(document).ready(function(){
	$("button").click(function(){
		$("#header").hide();
	});
});