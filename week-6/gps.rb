# Your Names
# 1) Kathryn Garbacz
# 2) Hagai Zwick

# We spent [3] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  #creates the hash of items that can be made
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  #checks if the item_to_make exists in the library, throws an error if it doesn't
  raise ArgumentError.new("#{item_to_make} is not a valid input") if !library[item_to_make]

  #old code replaced by above
  #error_counter = 3
  # library.each do |food|
  #   if library[food] != library[item_to_make]
  #     error_counter += -1
  #   end
  # end
  # if error_counter > 0
  #   raise ArgumentError.new("#{item_to_make} is not a valid input")
  # end

  #added functionality: checks if num_of_ingredients is enough for item_to_make, throws error if it's not
  if library[item_to_make] > num_of_ingredients
    raise ArgumentError.new("You do not have enough ingredients for #{item_to_make}")
  end

  #gets how many ingredients are needed for item_to_make and if there will be any remaining ingredients
   #after making it
   serving_size = library[item_to_make]
  #serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size

  #tells you how much of item_to_make you can make, plus how many ingredients are remaining if there
  #are any, plus what you can make with the remaining ingredients
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  when 6
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: you can make 1 of cake and 1 of cookie."
  when 5
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: you can make 1 of cake."
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: you can make #{remaining_ingredients} of cookie."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("pie", 13)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pie", 6)
p serving_size_calc("cupcake", 3)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?

  I learned the importance of making code simple and readable so that if someone else is reading it, it is
  easy enough to parse. For example, the original error checking was pretty convoluted and it took me and my
  partner some time to figure out how it was working, even though we knew what it's purpose was.

Did you learn any new methods? What did you learn about them?

  Values_at was new to me. I learned the proper way to use it to get a single value. At first my partner and
  I weren't sure why it had the [0] but then the ruby docs cleared up that values_at returns an array, so
  that is there to extract the value from that array. I replaced that bit with just library[item_to_make]-
  seemed more straighforward since we only need the one value.

What did you learn about accessing data in hashes?

  I learned about using !hash_name[key] to easily check if something exists in a hash, since this will return
  true if the value is nil.

What concepts were solidified when working through this challenge?

  A different format for if statements by putting the if after the consequence. Accessing data in hashes, and how much simpler it is having a key vs just indexes in an array.

=end