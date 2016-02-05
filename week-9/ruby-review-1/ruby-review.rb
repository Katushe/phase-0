# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin
DEFINE method super_fizzbuzz, which takes in 1 agrument, an array
  For each item in the array
    IF the item is divisible by 3 & 5
      set the item equal to "FizzBuzz"
    ELSIF the item is divisible by 3
      set the item equal to "Fizz"
    ELSIF the item is divisible by 5
      set the item equal to "Buzz"
    ELSE set the item equal to itself
=end



# Initial Solution

def super_fizzbuzz(array)
array.map!{|item|
  if item % 3 == 0 && item % 5 == 0
    item = "FizzBuzz"
  elsif item % 3 == 0
    item = "Fizz"
  elsif item % 5 == 0
    item = "Buzz"
  else item = item
  end
}

end


# Refactored Solution
def super_fizzbuzz(array)
array.map!{|item|
  item = item % 3 == 0 && item % 5 == 0 ? "FizzBuzz" :
         item % 3 == 0 ? "Fizz" :
         item % 5 == 0 ? "Buzz" :
         item
}
end



# Reflection
=begin
What concepts did you review in this challenge?

  I reviewed iterating through an array, destructively modifying an array
  (using map), and ternary operators.

What is still confusing to you about Ruby?

  At this point, I think I have a fairly good grasp of the concepts we've done
  so far. My biggest challenge at the moment is getting used to switching between
  languages more fluidly (I still find myself making syntax errors when going
  from Ruby <-> JS)

What are you going to study to get more prepared for Phase 1?

  I want to practice more with writing my own tests, since I haven't done much of
  that outside of plain driver code. I also would like to look in to recursion a bit,
  just because I've hit upon it quite a few times during research in the past few
  weeks but mostly put it on the backburner since we weren't getting into it yet and
  I didn't want to get too off track.
=end