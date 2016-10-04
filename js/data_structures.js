var colors = ["burgundy", "emerald", "beige", "indigo"];

var names = ["Mr. Ed", "Seabiscuit", "Shadowfax", "Concorde"];

colors.push("golden");
names.push("Bucephalus");

var horses = {};

for (var i = 0; i < names.length; i++) {
	horses[names[i]] = colors[i];
}

console.log(horses);


// Constructure function

function Car(make, model, year, isFast) {
	this.year = year;
	this.model = model;
	this.make = make;
	this.isFast = isFast;

	this.start = function() {console.log("VROOOM!");};

	console.log("Car initialization complete...");
}

var FirstCar = new Car("Ford", "Prius", 2012, false);
var SecondCar = new Car("Chevrolet", "Camaro", 2015, true);

FirstCar.start();
SecondCar.start();

console.log(FirstCar)