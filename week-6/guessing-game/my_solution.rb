# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: an integer called answer
# Output:
# Steps:


#Initial Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @result = nil
    if guess > @answer
      @result = :high
    elsif guess == @answer
      @result = :correct
    else @result = :low
    end
    return @result
  end

  def solved?()
    if @result == :correct
      return true
    else return false
    end
  end

end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  #using ternary operators
  def guess(guess)
    guess > @answer ? @result = :high : guess == @answer ? @result = :correct : @result = :low
    return @result
  end

  #using ternary operators
  def solved?()
    @result == :correct ? true : false
  end

end




# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of
a real-world object?

  Take, for example, a ball. Instance variables are like the things you would use to describe
  the ball, for example you might have color = orange, type = basketball, etc. And instance
  methods are like the actions you would perform with that ball, such as dribble or throw.


When should you use instance variables? What do they do for you?

  You should use instance variables when the information they hold is relevant to most/all
  of the methods in a class. That way you can use them throughout the class without passing
  them as arguments.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so,
what did you struggle with?

  Flow control is how Ruby chooses a path through your program. You change the flow through the
  use of conditionals and loops. Conditionals execute statements based on whether a specific
  statement is true and loops execute a certain block of code multiple times. I didn't have
  much trouble setting up the conditionals in my initial solution, but I did have some trouble
  converting it to ternanry operators. I feel like when theres more than two options, using
  ternary becomes harder to parse than just writing it out.

Why do you think this code requires you to return symbols? What are the benefits of using
symbols?

   When you use strings, even strings that are "equal" to one another are technically different
   objects and will have different object ids. A particular symbol on the other hand, will
   always be the same object and have the same id. This means that symbols take up less memory.
   In the case of this challenge, if you used strings, then every time you ran the program, it
   would create new string objects, but you really only need three objects: high, correct, low.

=end