// RELEASE 0:

// sort the array according to length of strings
function returnLongest(array) {
	array.sort(function(a, b){
  	return b.length - a.length;
	});

// print the first item in the sorted array
	return(array[0]);
};

//--------------------------------------------------------//
// RELEASE 1:

// if key values match between objects, return true; else return false
function sharedValues (ob1, ob2) {
// assign key values to each object, and a default "false" for shared value variable
	var sharedValue = false;
	var ob1Keys = Object.keys(ob1);
	var ob2Keys = Object.keys(ob2);
// loop through and compare values of each key
	for (var i = 0; i < ob1Keys.length || i < ob2Keys.length; i++) {
// if the keys match AND the values of the keys match
		if (ob1Keys[i] == ob2Keys[i] && (ob1[ob1Keys[i]] == ob2[ob2Keys[i]])) {
// change sharedValue to true
			sharedValue = true;
		}
	}
	return sharedValue
};

//--------------------------------------------------------//
// RELEASE 2:

//  create array with length of input integer, returning strings of random length
//  between 1-10

function randomArray(arrayLength) {
// assign array and alphabet variable
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var array = [];
// loop/iterate the length of user/function input
	for (var x = 0; x < arrayLength; x++) {
// create variable to be rewritten after each macro loop
	var newWord = "";
// for a random number of times between 1-10,
		for (var i = 0; i < (Math.floor(Math.random() * 10) + 1); i++) {
// add a random letter of alphabet to a new string
			newWord += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
		}
// push the string into the array after each macro loop
		array.push(newWord)
	}
	return array
}

//--------------------------------------------------------//
// DRIVER CODE:

	// Release 0:

// create an array
var arr= ["hello", "hola", "namaste", "ni hao", "konichiwa", "bonjour"];
var arr2 = ["gutentag", "hi", "hallo", "omg like hi!!"];

// print array to show initial order
console.log(arr);
console.log(arr2);

// test the functions
console.log(returnLongest(arr));
console.log(returnLongest(arr2));


	// Release 1:

// define objects to compare
var object1 = {name: "Tamir", age: 54};
var object2 = {name: "Steven", age: 54};
var object3 = {name: "Emily", age: 27};
var object4 = {person: "Emily", age: 26}

// expect TRUE: value of 'age' matches
console.log(sharedValues(object1, object2));

// expect FALSE: no key value matches
console.log(sharedValues(object1, object3));

// expect FALSE: key names are different, even though key values are matched
console.log(sharedValues(object3, object4))


	// Release 2:

// generate and print array, feed into longest word function, print again.  10 times

for (var i = 0; i < 10; i++) {
// making each array length random (between 1 and 10), just for fun
	array = randomArray(Math.floor(Math.random() * 10) + 1);
	console.log(array)
	console.log("Longest word:" + returnLongest(array))
}



