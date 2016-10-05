// create an array
var array = ["hello", "hola", "namaste", "ni hao", "konichiwa", "bonjour"];
var array2 = ["gutentag", "hi", "hallo"]
// print array to show initial order
console.log(array)
console.log(array2)

// sort the array according to length of strings
function return_longest(input) {
	input.sort(function(a, b){
  	return b.length - a.length;
	});
// print the first item in the sorted array
	console.log(input[0]);
};

// test the functions
return_longest(array);
return_longest(array2);


// ISSUE:  function is executing on first array only 
// (return_longest(array2) prints first array)