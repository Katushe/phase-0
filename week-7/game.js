 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Defeat the vampire before he defeats you
// Goals: pick up the silver or stake, which do more damage to the vampire than the garlic you start with.
// Characters: the player & the vampire
// Objects: player, vampire, silver, stake
// Functions: move, fight, pick up

// Pseudocode
/*
objects:
create an object 'player', which has properties position, speed, weapon, health
create an object 'silver', which has properties name, position, damage
create an object 'stake' which has properties name, position, damage
create an object 'vampire', which has properties position, health

functions:
DEFINE 'move' function, which takes 1 argument, "direction"
  IF  direction is "right"
    Add 5 to player's x position
  ELSE IF  direction is "left"
    Subtract 5 from player's x position
  ELSE IF  direction is "up"
    Add 5 to player's y position
  ELSE IF  direction is "down"
    Subtract 5 from player's y position
  display player,vampire,stake,& silver location
  makes calles to move vampire & pickup functions

DEFINE 'move_vamp' function, with no arguments
  choose randomly from left,right,up,down
  IF  direction is "right"
    Add 10 to vampires's x position
  ELSE IF  direction is "left"
    Subtract 10 from vampires's x position
  ELSE IF  direction is "up"
    Add 10 to vampires's y position
  ELSE IF  direction is "down"
    Subtract 10 from vampires's y position

DEFINE 'pick_up' function, with no arguments
  IF player.position = stake.position
    set player.weapon to stake
  ELSE IF player.position = silver.position
    set player.weapon to silver
*/


// Initial Code

// var player = {
//   position: [0,0],
//   speed: 5,
//   weapon: {name: "garlic", damage: 5},
//   health: 100,
// };

// var silver = {
//   name: "silver",
//   position: [Math.floor((Math.random() * 10) + 1)*5, Math.floor((Math.random() * 10) + 1)*5 ],
//   damage: 20,
// }

// var stake = {
//   name: "stake",
//   position: [Math.floor((Math.random() * 10) + 1)*5, Math.floor((Math.random() * 10) + 1)*5 ],
//   damage: 100,
// };

// var vampire = {
//   name: "vampire",
//   position: [Math.floor((Math.random() * 10) + 1)*10, Math.floor((Math.random() * 10) + 1)*10 ],
//   health: 100,
// }

// function move(direction){
//   if (direction == "right" && player.position[0] < 100 ){
//     player.position[0] += player.speed;
//   }
//   else if (direction == "left" && player.position[0] > 0){
//     player.position[0] -= player.speed;
//   }
//   else if (direction == "up" && player.position[1] < 100){
//     player.position[1] += player.speed;
//   }
//   else if (direction == "down" && player.position[1] > 0){
//     player.position[1] -= player.speed;
//   }
//   else {
//     console.log("You are at the edge of the board, you cannot move " + direction);
//   }

//   display_location(player);
//   display_location(vampire);
//   display_location(silver);
//   display_location(stake);

//   pick_up();
//   move_vamp();
//   fight_vamp();
// }

// function move_vamp(){
//   var directions = ["left", "right", "up", "down"];
//   var direction = directions[Math.floor(Math.random() * directions.length)];
//   if (direction == "right" && vampire.position[0] < 100 ){
//     vampire.position[0] += 10;
//   }
//   else if (direction == "left" && vampire.position[0] > 0){
//     vampire.position[0] -= 10;
//   }
//   else if (direction == "up" && vampire.position[1] < 100){
//     vampire.position[1] += 10;
//   }
//   else if (direction == "down" && vampire.position[1] > 0){
//     vampire.position[1] -= 10;
//   }
// }
// function fight_vamp(){
//   if (player.position.join() === vampire.position.join()){
//       player.health -= 10;
//       vampire.health -= player.weapon.damage;
//       console.log("Oh no! You have encountered a vampire!\n Your health is now " + player.health + ". And the " + vampire.name + "'s health is " + vampire.health);
//       if (player.health <= 0){
//         console.log("Your health has fallen below 0. Game over!");
//       }
//       else if (vampire.health <= 0){
//         console.log("Congratulations! You have defeated the " + vampire.name)
//       }
//     }
// }
// function pick_up(){
//     if (player.position.join() === stake.position.join()){
//       player.weapon = stake;
//       stake.position = [];
//       console.log("You have picked up the stake!");
//     }
//     else if (player.position.join() === silver.position.join() && player.weapon !== stake){
//       player.weapon = silver;
//       silver.position = [];
//       console.log("You have picked up the silver!");
//     }
// }

// function display_location(object){
//   var pos = "";
//   if (object === player){
//     pos = "You are at the coordinate " + object.position[0] + "," + object.position[1];
//   }
//   else{
//     pos = "The " + object.name + " is at the coordinate " + object.position[0] + "," + object.position[1];
//   }
//   console.log(pos);
// }


//Driver code

// while (player.health > 0 && vampire.health > 0){
//   while(player.position[0] < 100 && player.position[1] < 100){
//   if (player.health <= 0 || vampire.health <= 0){
//     break;
//   }
//   else {
//     move("right");
//     move("up");
//   }
// }
//   while(player.position[0] > 0 && player.position[1] > 0){
//     if (player.health <= 0 || vampire.health <= 0){
//       break;
//     }
//     else{
//       move("left");
//       move("down");
//     }
//   }
// }



// Refactored Code
var player = {
  position: [0,0],
  speed: 5,
  weapon: {name: "garlic", damage: 5},
  health: 100,
};

var silver = {
  name: "silver",
  position: randomPos(5),
  damage: 20,
}

var stake = {
  name: "stake",
  position: randomPos(5),
  damage: 100,
};

var vampire = {
  position: randomPos(10),
  health: 100,
}

function randomPos(num){
  return [Math.floor((Math.random() * 10) + 1)*num, Math.floor((Math.random() * 10) + 1)*num ];
}



function move(direction){
  if (direction == "right" && player.position[0] < 100 ){
    player.position[0] += player.speed;
  }
  else if (direction == "left" && player.position[0] > 0){
    player.position[0] -= player.speed;
  }
  else if (direction == "up" && player.position[1] < 100){
    player.position[1] += player.speed;
  }
  else if (direction == "down" && player.position[1] > 0){
    player.position[1] -= player.speed;
  }
  else {
    console.log("You are at the edge of the board, you cannot move " + direction);
  }

  displayLocation(player);
  displayLocation(vampire);
  displayLocation(silver);
  displayLocation(stake);
  pickUp();
  moveVamp();
  fightVamp();
}

function moveVamp(){
  var directions = ["left", "right", "up", "down"];
  var direction = directions[Math.floor(Math.random() * directions.length)];
  if (direction == "right" && vampire.position[0] < 100 ){
    vampire.position[0] += 10;
  }
  else if (direction == "left" && vampire.position[0] > 0){
    vampire.position[0] -= 10;
  }
  else if (direction == "up" && vampire.position[1] < 100){
    vampire.position[1] += 10;
  }
  else if (direction == "down" && vampire.position[1] > 0){
    vampire.position[1] -= 10;
  }
}
function fightVamp(){
  if (player.position.join() === vampire.position.join()){
    player.health -= 10;
    vampire.health -= player.weapon.damage;
    console.log("Oh no! You have encountered a vampire!\n Your health is now " + player.health + ". And the vampire's health is " + vampire.health);

    if (player.health <= 0){
      console.log("Your health has fallen below 0. Game over!");
    }
    else if (vampire.health <= 0){
      console.log("Congratulations! You have defeated the vampire")
    }
  }
}
function pickUp(){
    if (player.position.join() === stake.position.join()){
      player.weapon = stake;
      stake.position = [];
      console.log("You have picked up the stake!");
    }
    else if (player.position.join() === silver.position.join() && player.weapon !== stake){
      player.weapon = silver;
      silver.position = [];
      console.log("You have picked up the silver!");
    }
}

function displayLocation(object){
  var pos = object.position[0] + "," + object.position[1];
  if (object === player){
    pos = "You are at the coordinate " + pos;
  }
  else if (object === vampire){
    pos = "The vampire is at the coordinate " + pos;
  }
  else{
    pos = "The " + object.name + " is at the coordinate " + pos;
  }
  console.log(pos);
}


//Driver code
// while (player.health > 0 && vampire.health > 0){
//   while(player.position[0] < 100 && player.position[1] < 100){
//   if (player.health <= 0 || vampire.health <= 0){
//     break;
//   }
//   else {
//     move("right");
//     move("up");
//   }
// }
//   while(player.position[0] > 0 && player.position[1] > 0){
//     if (player.health <= 0 || vampire.health <= 0){
//       break;
//     }
//     else{
//       move("left");
//       move("down");
//     }
//   }
// }


// Reflection
/*
What was the most difficult part of this challenge?

  The  most difficult part for me was thinking of an idea to use for the game. I ended up being
 inspired by one of the examples provided, so at times I worried that the underlying idea would be
 seen as too similar and that I should start over with something else.

What did you learn about creating objects and functions that interact with one another?

  My objects had global scope, so I was able to use them in my functions without having to pass them in as arguments
  explicitly each time. I was also able to call functions within functions, which helped to keep me from having one
  supermega large "move" function.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

  I didn't use many built-in methods besides Math.floor(Math.random())-which I used from the start because I couldn't
  think of another way to generate random numbers-and join(), which wasn't new to me, but converting them into
  strings made it easier to compare two arrays. To be honest, I found it hard to find things I could refactor in a
  way that used built-ins. One of the things I changed was my function names because I realized while refactoring
  that I was using Ruby conventions instead of JS conventions. I also tried to cut down on repetitiveness so one of
  the things I did was create a separate function to calculate a random position since I was doing that multiple
  times. I also tried to find a way to refactor my movement conditionals since they did seem kind of repetitive,
  but I couldn't think of a way to do that since each movement technically alters a different value in a different
  way, it just looks very similar. (Though now as I'm writing this reflection I've thought of another thing to do-
  make a generic helper "movement" function that can be used on both the player and the vampire then call it on each
  during the 'move' function-will update my code in future.)

  I also tried making it interactive through the command line since I didn't think I'd have time to try out the
  optional release for making it work in a browser. To do this I looked into "readline" since prompt doesn't work
  outside a browser. However, I was having trouble making it work for multiple inputs that come one after another, so
  I scrapped it for now. When I find extra time in the next few weeks I definitely plan to work on making it
  interactive through the DOM.

How can you access and manipulate properties of objects?

  There's two ways to access/manipulate a value to a property of an object. There's square bracket notation:
  object["property"] = value, and dot notation: object.property = value. Using square brackets reminds me more of
  hashes in Ruby which are pretty similar to objects in JavaScript, but I prefer using dot because its more
  succinct/requires less typing.

*/