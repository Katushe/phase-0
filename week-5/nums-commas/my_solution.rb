# Numbers to Commas Solo Challenge

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
  #A positive integer
# What is the output? (i.e. What should the code return?)
  #A string in which that integer has been comma-separated
# What are the steps needed to solve the problem?
  #1. turn the integer into a string
  #2. reverse the string, to make it easier to count by three from right side
  #3. split the string into an array, so that each "digit" is a separate element
  #4. iterate through array in increments of three, adding a comma to every third element, until going forward another 3 elements would take you passed the end of the array (note to self: since array index starts at zero, when its at index of 3, its at the 4th "digit", so comma should come before the digit at that index)
  #5. join array back into a string
  #6. reverse the string back to correct order


# 1. Initial Solution
def separate_comma(num)
  num_as_array = num.to_s.split("").reverse
  curr_index = 0
  until (curr_index + 3) >= (num_as_array.length)
    curr_index += 3
    num_as_array[curr_index] = "," + num_as_array[curr_index]
  end
  num_as_array.join("").reverse
end



# 2. Refactored Solution

def separate_comma(num)
  num.to_s.split("").reverse.each_slice(3).map{|slice| slice.join("").reverse}.reverse.join(",")
end

# puts separate_comma(7814)
# puts separate_comma(1000)
# puts separate_comma(2559119)
# puts separate_comma(10000)

# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?

  Before I really started to think about it in words I wrote out a few numbers as arrays and then tried to visualize how to move through them by threes. One of the things I deliberated about was whether to add the comma as its own element or append it to one of the digits-I went with the latter because it doesn't affect the length of the array, which I was worried would confuse me when it came to reaching the end of the array. Initially I was thinking of doing two nested loops where the inner one counts to three and the outer one repeats that to the end of the array, but then I realised that it's simpler to just have one counter that increments by three each time. Arrays starting at zero also complicated my thinking at first, as at first the inside of my while loop worked like : add a comma after the digit at curr_index + 2, then increment curr_index by 3, because I was trying to differentiate between the third digit and the third index. Then I realized that I could just increment curr_index by 3 first and then just add the comma before the digit at that index.

Was your pseudocode effective in helping you build a successful initial solution?

  Personally, I think drawing out a few arrays was more helpful to me (side note: having a small whiteboard is very useful for that). I don't think putting it into words after that was really neccessary for me to know what I wanted to do, but it did help a little as an intermediary step between diagram -> code.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

  I used each_slice which divides an array into smaller arrays of the size you specify, and I didn't have trouble with the docs specifically. Mostly the problem I encountered was figuring out that I had to use it in conjunction with map to join each "slice" array into a string before joining them together. I also did not realise that I had to reverse each slice individually before joining them together and then reversing the whole string again until I ran the tests and failed them. It changed the way my code works in that it split apart the array while my original solution kept it intact and iterated over the whole thing.

How did you initially iterate through the data structure?

  Initially I used while loop along with a counter that increments by three each time you go through the loop. Because of this, the condition for the loop has to compare the current index + 3 to the length of the array. For example, if you have a 5 digit number, after it adds the first comma the next index would be 6, which doesn't exist so it should stop before going through the loop.

Do you feel your refactored solution is more readable than your initial solution? Why?

  Personally, I find code that is one long line of methods harder to read, though I know its more standard to do it that way. While writing it out I actually divided it into a few separate steps with more variables so that I could keep track of what each method was doing to what version of the array and then once it was working I condensed it down to one line.
=end