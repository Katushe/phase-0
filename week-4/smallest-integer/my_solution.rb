# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

#first solution using iteration instead of using an array method:
def smallest_integer(list_of_nums)
  smallest = list_of_nums[0]
  for i in 1...list_of_nums.length
    if smallest > list_of_nums[i] then
      smallest = list_of_nums[i]
    end
  end
  return smallest
end

#second solution after refactoring, using an array method
=begin

def smallest_integer(list_of_nums)
  return list_of_nums.sort[0]
end

=end
