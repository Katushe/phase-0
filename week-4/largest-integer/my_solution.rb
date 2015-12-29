# Largest Integer

# I worked on this challenge [by myself].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
#first solution using iteration instead of using an array method:

def largest_integer(list_of_nums)
  largest = list_of_nums[0]
  for i in 1...list_of_nums.length
    if largest < list_of_nums[i];
      largest = list_of_nums[i];
    end
  end
  return largest;
end

#second solution after refactoring, using an array method:

=begin
def largest_integer(list_of_nums)
  sorted = list_of_nums.sort {|x,y| y <=> x};
  return sorted[0];
end
=end