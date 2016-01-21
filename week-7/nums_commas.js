// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Sydney Rossman-Reich.

// Pseudocode
/*

1. create a function called separate comma that takes a number
2. convert the number to a string
3. separate the string into digits in an array
4. reverse the array
5. create an empty array to push to
6. create a loop that iterates by three, add a comma after the third item
7. reverse it back
8. join the elements back into a string
*/

// Initial Solution

var separateComma = function(num){
  var check = []
  var answer = num.toString().split("").reverse();
  for (var index = 0; index < answer.length; index ++){
      check.push(answer[index]);
    if( ((index+1)%3==0) && (index < (answer.length-1))){
      check.push(",");
    };
  };
  return check.reverse().join("");
};


console.log(separateComma(128907093));

// Refactored Solution

var separateComma2 = function(num){
  return num.toLocaleString();
};

console.log(separateComma2(128907093));


//Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (separateComma instanceof Object),
  "separateComma is not a function",
  "1. "
);

assert(
  (separateComma(82730408273) === "82,730,408,273"),
  "separateComma does not add commas to a number",
  "2. "
);




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

  I didn't think it was much different. While JavaScript and Ruby have their differences, the underlying logic is the same, so my steps were very similar. One difference is that in the initial solution we created a second array, as per my partner's suggestion whereas in my Ruby solution I altered the original array.

What did you learn about iterating over arrays in JavaScript?

  Unlike with Ruby, where there's built-in functions like each, in JavaScript you have to define your own loops, like here we used a for loop.

What was different about solving this problem in JavaScript?

  Iterating over the array was different, in my Ruby solution I used an until loop which doesn't seem to exist in JavaScript(though do..while is very similar), here we used a for loop instead. The way functions (compared to methods in Ruby) are defined is quite different as well.

What built-in methods did you find to incorporate in your refactored solution?

  We ended up finding a built-in method, toLocaleString() which adds commas in the right place. However, this function appears to use conventions of the user's current location, so it will only work when used in a place that uses the comma-every-three-digits convention.

*/