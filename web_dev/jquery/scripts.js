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

$(document).ready(function(){
    $("button").click(function(){
        $("#div1").fadeIn();
        $("#div2").fadeIn("slow");
        $("#div3").fadeIn(3000);
    });
});