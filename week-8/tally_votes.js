// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Heather Conklin
// This challenge took me [2] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}




// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}



/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}





// Pseudocode
/*
working from the inside out:
input: ticket object for each student that tells you who they voted for in each office
output: a property in voteCount for each office that contains the names of the people who
  received at least one vote for that office and the total votes for each of the names

Steps:
 iterate over the object votes
 pull out the 'president' vote for each student and see if that name already exists in the
   voteCount 'president' object.
      if it does increment the tally of votes for that name
      if it doesn't exist, add that name to the property 'president' with a value of 1
 repeat for the other offices


 for each office in voteCount, find the name with the most votes and update the
   value for that property in the officers object with that name

*/


// __________________________________________
// Initial Solution


for (var voter in votes) { // gets the name of the voter
  var ticket = votes[voter]; //gets the voter's choices
  for (var office in ticket) { // gets the office being voted for
    var candidate = ticket[office]; //gets the name of the person the student voted for
    if(voteCount[office].hasOwnProperty(candidate)) {
      voteCount[office][candidate] ++;
    }
    else voteCount[office][candidate] = 1;
  }
}

for (var office in voteCount){//gets the name of the office
  var candidates = voteCount[office]; //gets the names of the candidates for that office
  var current_max = 1;
  var winner = "";
  for (var candidate in candidates){//gets the name of the candidate
    var votes = voteCount[office][candidate]; //gets the number of votes for that candidate
      if (votes > current_max){
        winner = candidate;
        current_max = votes;
      }
  }
  officers[office] = winner;
}


// __________________________________________
// Refactored Solution

for (var voter in votes) {
  if(votes.hasOwnProperty(voter)){
    var ticket = votes[voter];
    for (var office in ticket) {
      if (ticket.hasOwnProperty(office)){
        var candidate = ticket[office];
        (voteCount[office].hasOwnProperty(candidate)) ? voteCount[office][candidate] ++ : voteCount[office][candidate] = 1;
      }
    }
  }
}

for (var office in voteCount){
  if (voteCount.hasOwnProperty(office)){
    var candidates = voteCount[office];
    var winner = Object.keys(candidates)[0];//gets the first candidate for something to compare to
    for (var candidate in candidates){
      if (candidates.hasOwnProperty(candidate)){
        if (voteCount[office][candidate] > voteCount[office][winner])
          winner = candidate;
      }
    }
    officers[office] = winner;
  }
}




// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?

  It's a bit more complicated than Ruby (so many for loops!). We learned that the variable in the for
  loop definition only gives you the key/index (for example, in "for (var voter in votes)" voter only
  gets you the name of the voter). So, you then need to pass that in to the object again to get its
  value (using the same example, we had to have "var ticket = votes[voter]" to access the information
  on who that person voted for).

Were you able to find useful methods to help you with this?

  We used "hasOwnProperty" to check if a name had already been added to the tallying, if it was then
  we could just increment the count for it and if it didn't then we had to add the name first.
  We also used "keys" to make the candidate names into an array: this is the only way we could think
  of to access the "first" property of an object without explicitly knowing what the key is, so that
  we could then compare the values without needing two variables like we had in our initial solution.

What concepts were solidified in the process of working through this challenge?

  How to iterate over objects, especially nested ones, in JavaScript. I think it helped me get better
  at nested for loops as well (so many parentheses/brackets to keep track of).
*/



// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)