// print text to test that script is loading
console.log("Initiated!");

// define variables
var pic = document.getElementById("celebrate");
var text = document.getElementsByTagName("em")[0];

// add border to picture element
pic.style.border = "5px solid black";

// change text color of header
text.style.color = "green";

// change color of border when clicked
function addGreenBorder(event) {
	console.log("click happened!")
	console.log(event);
	event.target.style.border = "20px solid green";
}

// change color of font when clicked
function addBlueText(event) {
	console.log("click happened!")
	console.log(event);
	event.target.style.color = "blue";
}

pic.addEventListener("click", addGreenBorder);
text.addEventListener("click", addBlueText);