// RELEASE 0:

// sort the array according to length of strings
function return_longest(array) {
	array.sort(function(a, b){
  	return b.length - a.length;
	});

// print the first item in the sorted array
	console.log(array[0]);
};

// DRIVER CODE:

// create an array
var arr= ["hello", "hola", "namaste", "ni hao", "konichiwa", "bonjour"];
var arr2 = ["gutentag", "hi", "hallo", "omg like hi!!"]

// print array to show initial order
console.log(arr)
console.log(arr2)

// test the functions
return_longest(arr);
return_longest(arr2);
