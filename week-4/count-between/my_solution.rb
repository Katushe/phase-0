# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

#First solution, using iteration:

def count_between(list_of_integers, lower_bound, upper_bound)
  count = 0;
  for i in 0...list_of_integers.length
    if list_of_integers[i] >= lower_bound && list_of_integers[i] <= upper_bound
      count +=1;
    end
  end
  return count;
end


#Second solution after refactoring, using array methods:

=begin
def count_between(list_of_integers, lower_bound, upper_bound)
  return list_of_integers.count {|x| x >= lower_bound && x <= upper_bound};
end
=end