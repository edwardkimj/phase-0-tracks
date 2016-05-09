// //release 0
​
var name = ["Joe", "Bob", "Jen", "Ned"];
var color = ["blue", "purple", "aqua", "pink"];
​
color.push("red");
​
name.push("Sara");
​
console.log(name)
console.log(color)
​
// release 1
​
function toObject(name, color) {

	var name = ["Joe", "Bob", "Jen", "Ned"];
	var color = ["blue", "purple", "aqua", "pink"];
	var horseArray = {};
​
    for (var i = 0; i < name.length; i++)
         horseArray[name[i]] = color[i];
    console.log(horseArray);
};
​
toObject()
​
//release 2
​
​
function Car (type, topspeed) {

  console.log("Your new car:", this);

  this.type = type;
  this.topspeed = topspeed;
​
  this.park = function() { console.log("You just parked your car!"); };

  console.log("CAR INITIALIZATION COMPLETE");

};
​
console.log("Let's build a car... ");
var anotherCar = new Car("Sedan", 200);
console.log(anotherCar);
console.log("Your car can park!")
anotherCar.park();
console.log("-------")
​
​
console.log("Let's build a second car... ");
var car2 = new Car("Sports", 220);
console.log(car2);
console.log("Your car can park!")
anotherCar.park();
console.log("-------")
​
