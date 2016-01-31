# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [0.75] hours.

# Pseudocode
=begin
DEFINE method "reverse_words" with 1 argument, a string
  Separate the words into an array
  FOR EACH word in the array
    Separate the characters into an array
    Iterate through the character array backwards
      pushing each character to a new array
    Join the characters back into a string
  Join the words back into a string
=end


# Initial Solution
def reverse_words(words)
  words_array = words.split(" ")
  words_array.map! {|word|
    word_array = word.split("")
    reversed_word = []
    i = word_array.length - 1
    until i < 0 do
      reversed_word.push(word_array[i])
      i -= 1;
    end
    word = reversed_word.join("")
  }
  words_array.join(" ")
end



#Refactored Solution

#I already knew about the reverse method, wanted to try it without using that in the initial solution
def reverse_words(words)
  word_array = words.split()
  word_array.map! {|word| word.reverse }
  word_array.join(" ")
end



# Reflection
=begin

What concepts did you review or learn in this challenge?

  I reviewed iterating through an array, use of a destructive method, converting between a string
  and an array. This was the first time I tried iterating backwards through an array I think, and
  I did later find the reverse_each method which does iterate through an array backwards, but
  didn't end up using it since my refactored method just used reverse anyway.

What is still confusing to you about Ruby?

  I think I have a fairly good grasp of the things we've covered so far.. My biggest issue at
  this point is switching between different languages. After focusing on JavaScript for a while,
  there were a few times when I had to pause and think about the correct Ruby syntax.

What are you going to study to get more prepared for Phase 1?

  I might skim over a few of the chapters in the Ruby book again, and I am going to complete as
  many of the Ruby review challenges as my time allows, which will hopefully be all of them. I am
  also going to try a few of them in JavaScript right after I've finished the Ruby version so I
  can practice switching between the two languages more fluidly.


=end