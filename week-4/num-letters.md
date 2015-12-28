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

  ```
  puts 24*365
  ```

* Minutes in a decade. Multiply 60 (# of minutes in an hour) by 24 (# of hours in a day) by 365(# of days in a year) by 10 (# of years in a decade)

  ```
  puts 60*24*365*10
  ```

**RELEASE 5**

* [Defining Variables](https://github.com/Katushe/phase-0/blob/master/week-4/defining-variables.rb)

* [Simple String Methods](https://github.com/Katushe/phase-0/blob/master/week-4/simple-string.rb)

* [Local variables and Basic Arithmetical Operations](https://github.com/Katushe/phase-0/blob/master/week-4/basic-math.rb)

**RELEASE 7**

**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**

Ruby handles addition, subtraction, multiplication, and division much like you would expect-it works like normal arithmetic. Each opermation has its own operator: addition is '+', subtraction is '-', mutiplication is '*', and division is '/'.

**What is the difference between integers and floats?**

Intergers are always whole numbers, so they cannot have decimals. Floats on the other hand always have decimals (you must add '.0' to a whole number if you want to designate it as a float, like 5.0).

**What is the difference between integer and float division?**

Float division will give you an exact output since floats have decimals, while integer division will round down to the nearest whole number since integers don't have decimals.

**What are strings? Why and when would you use them?**

Strings are groups of letters/characters. Strings are usually used to create a text object, though you can also have a number as a string-it won't behave like a number in that case.

**What are local variables? Why and when would you use them?**

A local variable is a variable that only has meaning within its own block of code, like within a function. This means it will not be defined in other blocks of code within the same file or in other files, and thus cannot be used there unless you define it again. You would use local variables for things that are only needed within a certain block of code and can be forgotten otherwise.

**How was this challenge? Did you get a good review of some of the basics?**

This challenge was very straightforward and pretty easy. It hasn't been that long since I went through the codecademy Ruby track for my interview, so I still remembered everything. It seemed like a good review though.

