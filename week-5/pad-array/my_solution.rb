# Pad an Array

# I worked on this challenge [with: Heather Conklin]

# I spent [0.75] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

#pad!:
#input: array, non-negative integer, optional default value
#output: a new array
#steps:
#1. test length of array, compare to minimum size and return if long enough
#2. Increase the size of the array and add the value provided, or the default value of nil
#3. return the new array

#pad
#input: array, non-negative integer, optional default value
#output: a new array
#steps:
#1. create a new array that is a copy of input array
#2. test length of array, compare to minumum size  and return if long enough
#3. Increase the size of the new array and add the value provided, or the default value of nil if none is provided
#5. return the new array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    difference = min_size - array.length
    for i in 1..difference
      array.push(value)
    end
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  result = Array.new
  array.each do |item|
    result.push(item)
  end
  if result.length >= min_size
    return result
  else
    difference = min_size - result.length
    for i in 1..difference
      result.push(value)
    end
  end
  return result
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    difference = min_size - array.length
    array.fill(value,min_size,difference)
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  result = array.dup
  if result.length >= min_size
    return result
  else
    difference = min_size - result.length
    result.fill(value,result.length,difference)
  end
  return result
end

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?

  Yes. We started with the non-destructive pad and we broke it into steps like: make a copy, check the size so that 
  we just return if the array is already big enough, then add in the new values and return the new array.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

  My partner and I had started working in coderpad and hadn't realized that the methods were already defined for us 
  in the files provided. So we had a different idea of how to define the method (instead of giving value a default value 
  of nil in the argument we made it an optional value). Once we moved our code to our machines to test we saw the provided 
  definitions, and it seemed more efficient so we reworked our solution to fit that instead.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

  We initially weren't copying the array properly in the non-destructive version and so the original array was still being 
  affected, so we reworked it using .each to add each value from the original to the copy.

When you refactored, did you find any existing methods in Ruby to clean up your code?

  When making a copy, we used "dup" to duplicate the original array. We also used "fill" to increase the array's 
  size/add the new values.

How readable is your solution? Did you and your pair choose descriptive variable names?

  I think our solution is pretty readable. For the most part we used the variables suggested by the method definition 
  provided, the only one we named ourselves was the copy array which we named result.

What is the difference between destructive and non-destructive methods in your own words?

  A non-destructive method creates a copy of the original input object, and then any changes made within the method will 
  only effect the new copy and leave the original as it was. A destructive method on the other hand, will make all the 
  changes to that original object, effectively "destroying" the object you started with, since it won't exist in its original 
  form anymore.
=end
