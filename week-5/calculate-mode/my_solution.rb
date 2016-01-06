# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Jenna El-Amin ]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
# What is the input? an array of integers or strings
# What is the output? (i.e. What should the code return?) an array of the most frequent values (even if there is only one)
# What are the steps needed to solve the problem?
# define a method called mode that takes an array as its argument
# create an empty hash
# iterate through the input array
 # for each value in the array, IF the value doesn't exist in the hash, add it to the hash
 # IF it does, increase the value by one
# set max equal to 0
# iterate through the hash to find the maximum
# select the keys that correspond the maximum
# return the most frequent keys


# 1. Initial Solution
def mode(array)
  freq = Hash.new
  array.each do |x|
    if freq[x].nil?
      freq[x] = 1
    else freq[x] += 1
    end
  end
  max = 0
  freq.each do |x, y|
    if y >= max
      max = y
    end
  end
  most = freq.select {|x, y| y == max}
  most.keys
end


# 3. Refactored Solution
def mode(array)
  freq = Hash.new(0)
  array.each do |x|
    freq[x] += 1
  end
  max = freq.values.max
  most = freq.select {|x, y| y == max}
  most.keys
end


# 4. Reflection

=begin

Which data structure did you and your pair decide to implement and why?

  We used a hash because there were two pieces of connected info we wanted to store: each distinct value and the number of times it appears in the original array. So, using a hash, we could store the values, be they numbers or strings, as the keys and the their frequency as their corresponding values.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

  When doing the psuedo code, it was easier to break it down into steps than last time. Our problems came once we tried to convert it into code, but our steps weren't the problem so much as figuring out the best way to implement each step.

What issues/successes did you run into when translating your pseudocode to code?

  At first, when iterating through our hash, we didn't specify both the key and the value (we did 'freq.each do |x|' instead of 'freq.each do |x,y|') and it took us a while to figure out that this is why we were getting empty output. We also tried using find_all instead of select to find the elements with frequency = max at first, which gave us problems since it was returning both the key and the value in an array when we only wanted the key.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

  We used .each to iterate through both the array and the hash. In refactoring, we ended up using the .max method instead of iterating with .each and keeping track of the current maximum.

=end

