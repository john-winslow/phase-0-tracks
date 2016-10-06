// RELEASE 0:

// sort the array according to length of strings
function return_longest(array) {
	array.sort(function(a, b){
  	return b.length - a.length;
	});

// print the first item in the sorted array
	console.log(array[0]);
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
	console.log(sharedValue)
};

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
return_longest(arr);
return_longest(arr2);


	// Release 1:

// define objects to compare
var object1 = {name: "Tamir", age: 54};
var object2 = {name: "Steven", age: 54};

sharedValues(object1, object2);


