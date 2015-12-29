# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

#first solution using iteration:
def array_concat(array_1, array_2)
  cnct_array = array_1;
  for i in 0...array_2.length
    cnct_array[cnct_array.length+i] = array_2[i];
  end
  return cnct_array;
end


#After refactoring, solution using array methods:

=begin
def array_concat(array_1,array_2)
  array_1.concat(array_2);
end
=end