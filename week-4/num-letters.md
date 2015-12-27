**RELEASE 1**

**What does puts do?**

Puts prints the output of your code to the console in a new line, but it returns nil, meaning you cannot use the output in future code.
**What is an integer? What is a float?**

An integer is a whole number, i.e. a number without decimal points. Floats on the other hand are numbers with decimal points.

**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**

Division in Ruby will output the same type you put in, i.e. if you use floats you will get a float and if you use integers you will get an integer. This means that division with floats will give you a more exact output, since floats use decimals. Division with integers on the other hand will round down to a whole number since it can't have decimals. This is similar to the difference between long division, where you get an exact answer with decimalsz and division with a remainder, where you only get a whole number.

**RELEASE 2**
*for simplicity, I ignored leap years*
* Hours in a year. Multiply 24 (# of hours in a day) by 365(# of days in a year)
  ````
  puts 24*365
  ````
*Minutes in a decade. Multiply 60 (# of minutes in an hour) by 24 (# of hours in a day) by 365(# of days in a year) by 10 (# of years in a decade)
  ````
  puts 60*24*365*10
  ````