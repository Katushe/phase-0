# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
#first solution, using iteration:

def shortest_string(list_of_words)
  shortest = list_of_words[0]
  for i in 1...list_of_words.length
    if shortest.length > list_of_words[i].length then
      shortest = list_of_words[i]
    end
  end
  return shortest
end

#second solution, using array methods:

=begin
def shortest_string(list_of_words)
  sorted = list_of_words.sort {|x,y| x.length <=>y.length}
  return sorted[0]
end
=end
