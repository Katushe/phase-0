# Hole 1
# Target element: "FORE"

array = [ [1,2], ["inner", ["eagle", "par", ["FORE", "hook"] ] ] ]

# attempts: 2
# ============================================================

# p array[1][1][0]
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"} } } }

# attempts: 1
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"} ] }

# attempts: 2
# ============================================================

# p nested_data[:array][0][:hash]
p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map!{|element|
  if element.kind_of?(Array)
    element.map!{|inner| inner += 5}
  else element + 5
end}

p number_array



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"] ] ]

startup_names.map!{|element|
  if element.kind_of?(Array)
    element.map! {|inner|
      if inner.kind_of?(Array)
        inner.map! {|inner_2|
          inner_2 << "ly"
          }
    else
        inner << "ly"
    end
      }
  else
    element << "ly"
  end
  }

p startup_names

#Reflection
=begin
What are some general rules you can apply to nested arrays?

  Elements in nested arrays are accessed much like in normal arrays, using square brackets, only with nested arrays you have a bracket representing each "level". Iterating over them is also very similar to normal arrays, but you have to nest the iteration as well.

What are some ways you can iterate over nested arrays?

  You can iterate over nested arrays using nested loops. You have an outer loop that iterates over the outer array. Within that loop, you check whether the current element is an array, and if it is, you create an inner loop that iterates over that inner array.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

  "Kind_of?" was new to me, I've only used its close relative "is_a?" before, but they accomplish the same thing. In terms of modifying the arrays, we chose to use "map!", which we were both already familiar with, because it seems like the most straightforward way to transform the elements in an array, and when using the destructive version it is easy to modify the original array instead of creating a copy.

=end