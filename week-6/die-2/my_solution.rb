# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [0.75] hours on this challenge.

# Pseudocode

# Input: a die object
# Output: the number of sides/ the string assigned to a side randomly chosen (depending on which method you call)
# Steps:
#1. make a constructor method which creates the die object
    #a. the number of sides is determined by the length of the input array
    #b. assign the array as a instance variable to represent the side values
#2. make a sides method which is called on a die object and returns its number of sides
#3. make a roll method which is called on a die object and returns one of the strings at random


# Initial Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("You must provide a non-empty array") if labels.empty?
    @sides = labels.length
    @side_values = labels.dup
  end

  def sides
    @sides
  end

  def roll
    rand = rand(0...@sides)
    @side_values[rand]
  end
end



# Refactored Solution
class Die
  def initialize(labels)
    #add another error check to capture additional edge case: input is not an array
    raise ArgumentError.new("Not a valid input, must provide an array") if !labels.is_a?(Array)

    raise ArgumentError.new("You must provide a non-empty array") if labels.empty?
    @sides = labels.length
    @side_values = labels
  end

  def sides
    @sides
  end

  #found a method which chooses a random element in an array
  def roll
    @side_values.sample

  end
end



# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

  Before, the only intance variable needed was the number of sides, this time a variable for the array is also needed. Before you had to call random just on the number of sides, but this time you can either call random on the number of sides and then access the array at that index or call the sample method to get a random element of the array. So, the logic was mostly the same, just with a few more steps here and there.

What does this exercise teach you about making code that is easily changeable or modifiable?

  Keeping code clear and simple makes it easy to modify later, by adding a few more steps if the new functionality is similar enough to the original.

What new methods did you learn when working on this challenge, if any?

  I learned about sample, which is an array method that returns a random element from the array.

What concepts about classes were you able to solidify in this challenge?

  The use of instance variables-how to define them and when they are needed. Like here, it is not enough to just use "labels" throughout the class, you need to define an instance variable (here I used @side_values) in order for the code to work.

=end