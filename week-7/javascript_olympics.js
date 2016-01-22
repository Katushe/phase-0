// JavaScript Olympics

// I paired [by with: Jonathan Silvestri] on this challenge.

// This challenge took me [1] hours.



// Bulk Up

//my pair and I were a bit unlear on the instructions, our first attempt here had the function itself printing the string instead of just adding the printing as a property
// function win(array) {
// for (var x in array) {
//   array[x].win = "won the ";
//   console.log(array[x].name + " " + array[x].win + " " + array[x].event + "!");
//  }
// }

function win(array) {
  function add_win(obj) {
    obj.win = function() {
      console.log(obj.name + " won the " + obj.event + "!");
    }
  }
  for (var x in array) {
    add_win(array[x]);
  }
  return athletes;
}

var athletes = [
{
  name: "Sarah Hughes",
  event: "Ladies Singles",
},
{
  name: "Derek Jeter",
  event: "World Series",
},
{
  name: "Tom Brady",
  event: "Super Bowl",
}];


athletes = win(athletes);
athletes[0].win();
athletes[1].win();
athletes[2].win();


// Jumble your words

function reverseString(string) {
  return string.split('').reverse().join('');
}

console.log(reverseString("Hello"));


// 2,4,6,8

function evenNumbers(array){
  function isEven(value){
    return value % 2 == 0;
  }
  return array.filter(isEven);

}

console.log(evenNumbers([2,3,4,6]));

// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}




var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

/*
What JavaScript knowledge did you solidify in this challenge?

  How to bulk-modify objects(since before I had only done them one at a time) and how to set functions as properties of an object(since before I had only done strings or other objects).

What are constructor functions?

  A constructor function is a function that allows you to make many objects of the same "type" without having to use the object-literal way for each one.

How are constructors different from Ruby classes (in your research)?

  They are similar in that they allow you to create objects of the same type, but constructors seem to be more analogous to the initialize method within a class. As far as I can tell, when you create a constructor, it can assign properties to a new object, but those properties can't be functions. If you want to add a function to an object you use something called a prototype. So this is like how the initialize function in Ruby classes only assigns the instance variables and then the methods are defined elsewhere in the class.

*/