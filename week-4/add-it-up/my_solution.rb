# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Mollie Stein].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of all of the numbers
# Steps to solve the problem.


# 1. total initial solution
# Read through an array of numbers
# Add the numbers in the array
# Calculate the sum of all numbers

def total(array)
  sum = 0;
  for i in 0...array.length
    sum = sum + array[i];
    i += 1;
  end
  return sum;
end


# 3. total refactored solution

def total(array)
 (array).reduce(:+);
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: array strings joined into a sentence
# Steps to solve the problem.
# Read through array of strings
# Concatenate the strings into a sentence

# 5. sentence_maker initial solution

def sentence_maker(array)
  string = '';
  for i in 1...array.length
    string = string + ' ' + array[i].to_s;
    i += 1;
  end
  return array[0].capitalize + string + '.';
end


# 6. sentence_maker refactored solution

def sentence_maker(array)
  (array).join(" ").capitalize + '.';
end
