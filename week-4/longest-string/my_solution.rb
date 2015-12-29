# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below

def longest_string(list_of_words)
  longest = list_of_words[0];
  for i in 1...list_of_words.length
    if longest.length < list_of_words[i].length then
      longest = list_of_words[i];
    end
  end
  return longest;
end

#second solution, using array methods
=begin
def longest_string(list_of_words)
  sorted = list_of_words.sort {|x,y| y.length <=> x.length};
  return sorted[0];
end
=end