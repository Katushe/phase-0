 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:
// Goals:
// Characters:
// Objects:
// Functions:

// Pseudocode
//
//
//
//
//

// Initial Code

var player = {
  position: [0,0],
  speed: 5,
  weapon: {name: "garlic", damage: 5},
  health: 100,
};

var silver = {
  name: "silver",
  position: [Math.floor((Math.random() * 10) + 1)*5, Math.floor((Math.random() * 10) + 1)*5 ],
  damage: 20,
}

var stake = {
  name: "stake",
  position: [Math.floor((Math.random() * 10) + 1)*5, Math.floor((Math.random() * 10) + 1)*5 ],
  damage: 100,
};

var vampire = {
  name: "vampire",
  position: [Math.floor((Math.random() * 10) + 1)*10, Math.floor((Math.random() * 10) + 1)*10 ],
  health: 100,
}

displayLocation(stake);
displayLocation(silver);


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

  display_location(player);
  display_location(vampire);

  pick_up();
  move_vamp();
  fight_vamp();
}

function move_vamp(){
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
function fight_vamp(){
  if (player.position.join() === vampire.position.join()){
      player.health -= 10;
      vampire.health -= player.weapon.damage;
      console.log("Oh no! You have encountered a vampire!\n Your health is now " + player.health + ". And the " + vampire.name + "'s health is " + vampire.health);
      if (player.health <= 0){
        console.log("Your health has fallen below 0. Game over!");
      }
      else if (vampire.health <= 0){
        console.log("Congratulations! You have defeated the " + vampire.name)
      }
    }
}
function pick_up(){
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

function display_location(object){
  var pos = "";
  if (object === player){
    pos = "You are at the coordinate " + object.position[0] + "," + object.position[1];
  }
  else{
    pos = "The " + object.name + " is at the coordinate " + object.position[0] + "," + object.position[1];
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



// // Refactored Code
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

displayLocation(stake);
displayLocation(silver);

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


// //Driver code
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
//
//
//
//
//
//
//
//