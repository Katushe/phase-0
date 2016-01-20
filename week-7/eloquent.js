// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var greeting = "Hello"
console.log(greeting + ", world!")

var food = function(){
  prompt("what is your favorite food?");
  console.log("Hey that's my favorite too!");
}

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//Triangle
var hashes = ""
for (var i = 0; i < 7; i++){
  hashes += "#";
  console.log(hashes);
}
//or
hashes2 = ""
while (hashes2.length <= 7){
  hashes2 += "#";
  console.log(hashes2);
}
/*
book's solution, included just for my reference:
for (var line = "#"; line.length < 8; line += "#")
  console.log(line);
*/

//Fizzbuzz
for (var i = 1; i <= 100; i++){
  if (i % 3 == 0)
    console.log("Fizz");
  else if (i % 5 == 0)
    console.log("Buzz");
  else
    console.log(i);
}
//Fizzbuzz modified
for (var i = 1; i <= 100; i++){
  if (i % 3 == 0 && i % 5 == 0)
    console.log("FizzBuzz");
  else if (i % 3 == 0)
    console.log("Fizz");
  else if (i % 5 == 0)
    console.log("Buzz");
  else
    console.log(i);
}
/*
book's solution, included just for my reference:
for (var n = 1; n <= 100; n++) {
  var output = "";
  if (n % 3 == 0)
    output += "Fizz";
  if (n % 5 == 0)
    output += "Buzz";
  console.log(output || n);
}
*/

//Chess
var size = 8;
var board = "";
for (i = 0; i < size; i++){
  var line = "";
  if (i % 2 != 0){
    while (line.length < 8){
      line += " #";
    }
  }
  else {
    while (line.length < 8){
      line += "# ";
    }
  }
  board += line + "\n";
}
console.log(board);
/*
book's solution, included just for my reference:
var size = 8;
var board = "";
for (var y = 0; y < size; y++) {
  for (var x = 0; x < size; x++) {
    if ((x + y) % 2 == 0)
      board += " ";
    else
      board += "#";
  }
  board += "\n";
}
console.log(board);
*/


// Functions

// Complete the `minimum` exercise.
function min(x,y){
  if (x < y)
    return x;
  else
    return y;
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Kathryn",
  age: 23,
  favorite_foods = ["pierogi","fries","pasta"],
  quirk: "I love to knit."
}