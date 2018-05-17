var assert = require("assert");
var inspect = require("util").inspect;
var demangle = require("..");

var __this = 8;
var __usualDoors = 3;
var __doors = -1;

var exports = demangle({
  "vroom": function() { console.log("vroom", arguments); },
  "Car.MAX_DOORS": 5,
  "Car.get:usualDoors": function() { console.log("Car#get:usualDoors", arguments); return __usualDoors; },
  "Car.set:usualDoors": function(value) { console.log("Car#set:usualDoors", arguments); __usualDoors = value; },
  "Car#constructor": function(this_, doors) { console.log("Car#constructor", arguments); __doors = doors; return __this; },
  "Car#openDoors": function(this_) { console.log("Car#openDoors", arguments); return true; },
  "Car#get:doors": function(this_) { console.log("Car#get:doors", arguments); return __doors; },
  "Car#set:doors": function(this_, value) { console.log("Car#set:doors", arguments); __doors = value; }
});

console.log(inspect(exports, true));

exports.vroom(1, 2, 3);

var Car = exports.Car;

assert(Car.usualDoors == 3);
exports.Car.usualDoors = exports.Car.usualDoors + 2;
assert(Car.usualDoors == 5);

var car = new exports.Car(2);

assert(car.this == 8);

assert(car.openDoors() == true);
assert(car.doors == 2);
car.doors = car.doors + 2;
assert(car.doors == 4);

console.log(inspect(car, true));

var wrappedCar = exports.Car.wrap(16);

assert(wrappedCar.this == 16);

console.log(inspect(wrappedCar, true));
