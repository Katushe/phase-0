# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [0.5] hours on this challenge.

# 0. Pseudocode

# Input: a die object
# Output: the die's # of sides/a random number between 1 and the # of sides (depending on which method you call)
# Steps:
#1. make a constructor method which creates the die object based on the number of sides provided. Return an error if the number of sides is less than 1
#2. make a sides method which is called on a die object and returns its number of sides
#3. make a roll method which is called on a die object and returns a random number based on how many sides it has


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("A die must have at least one side in this dimension")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end




# 3. Refactored Solution
#there didn't seem to be much to change, so I added a check to make sure "sides" is an integer


class Die
  def initialize(sides)
    unless sides.is_a? Integer
      raise ArgumentError.new("The # of sides must be an integer")
    end
    if sides < 1
      raise ArgumentError.new("A die must have at least one side to exist")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end





=begin
# 4. Reflection
What is an ArgumentError and why would you use one?

  An argument error is raised when there is an issue with the argument provided
  during a method call. A few of the situations it would be used in:
     -when there is a wrong number of arguments (e.g. the method is defined for 1
      argument but the call used 2)
     -the argument is the wrong data type (e.g. the method is defined for strings
      but the call used an integer)
     - the value of the argument isn't supported by the method(e.g. like in this
      exercise, sides can't have a value less than 1)

What new Ruby methods did you implement? What challenges and successes did you have
 in implementing them?

  I used ArgumentError.new and rand for the first time this challenge. They were
  pretty straightforward to use, though I still have trouble remembering which of
  "..." and ".." is exclusive/inclusive for ranges.

What is a Ruby class?

  A class is a blueprint used to create individual objects. Objects of a certain class
  will have methods/variables associated with that class. Things like strings,
  arrays, etc are considered classes, but you can also define your own classes.

Why would you use a Ruby class?

  You would use a Ruby class when you want to be able to create multiple objects
  of the same "type" that have the same variables/methods associated with them.
  For example, here, objects of type "Die" have "sides" as a variable and "sides" and
  "roll" as methods.

What is the difference between a local variable and an instance variable?

  A local variable is tied to a certain method while an instance variable is tied to
  an object. A local variable cannot be used outside of its method while an instance
  variable can be used across methods but must be used in relation to a particular
  instance.

Where can an instance variable be used?

  An instance variable can be used across methods for a particular object/instance.

=end