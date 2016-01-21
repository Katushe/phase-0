 // JavaScript Olympics

// I paired [by with: Jonathan Silvestri] on this challenge.

// This challenge took me [1] hours.



// Bulk Up

// function win(array) {
// for (var x in array) {
//   array[x].win = "won the ";
//   console.log(array[x].name + " " + array[x].win + " " + array[x].event + "!");
//  }
// }

function win(array) {
for (var x in array) {
  array[x].win = function(){
    console.log(array[x].name + " won the " + array[x].event + "!");
  }
 }
 return athletes;
}

var athletes = [];
athletes[0] = {
  name: "Sarah Hughes",
  event: "Ladies Singles",
};
athletes[1] = {
  name: "Derek Jeter",
  event: "World Series",
};

athletes[2] = {
  name: "Tom Brady",
  event: "Super Bowl",
};

athletes = win(athletes);
athletes[1].win();


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