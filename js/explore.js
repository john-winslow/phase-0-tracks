// create function with string input
function reverse(str) {

// create an empty string to populate 
	var reversed = "";
// for loop: start at end of string (-1), loop over each
// letter and add to new string, until i reaches 0
	for (var i = str.length - 1; i >= 0; i--) {
		reversed += str[i];
	}
	console.log(reversed);
}

// test
reverse("hello");
reverse("namaste")
