//release 0 and 1
var colors = ["red", "orange", "yellow", "blue"];
var names = ["Ed", "Harry", "Rose", "Greg"];
colors.push("green");
names.push("Frank");
console.log(colors);
console.log(names);
var horse_info = {};
for (var i = 0; i < colors.length; i++) {
  horse_info[names[i]] = colors[i];
}
console.log (horse_info);
//release 2
function Car(type, color, seatNumber) {
this.type = type;
this.color = color;
this.seatNumber = seatNumber;
this.honk = function() {console.log("Honk!");};
}
var myCar = new Car("Tesla", "White", 4);
console.log("My car:");
console.log(myCar);
myCar.honk();
var anotherCar = new Car("Ford", "Blue", 6);
console.log("Another Car:");
console.log(anotherCar);
anotherCar.honk();
var thirdCar = new Car("Volkswagen", "Red", 2);
console.log("Weekend Car:");
console.log(thirdCar);
thirdCar.honk();