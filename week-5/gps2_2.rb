# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# 1. Separate items based on spaces so they're each an individual string.
# 2. Use a hash to store the item name and the quantity as the key and the value for each item.
# 3. Set default quantity to zero
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list(items)
  list = Hash.new(0)
  items.split(' ').each do |item|
    list[item] = 0
  end
  look_pretty(list)
end


# Method to add an item to a list
# input: item name and optional quantity
# steps:  add the item and quantity to the hash

# output: new hash containing all previous items with added item
def add_item(list, item, quantity=0)
  list[item] = quantity
end

#we had some extra time at the end of our session, so we worked on a method that allows you to add multiple items at once using a options hash
def add_multiple_items(list, items={})
  items.each do |key, value|
    list[key] = value
  end
end
# input the list, the item with the qantity
#for reach item, add to list with quanitty


# Method to remove an item from the list
# input: list and item to be removed
# steps: select item by key and delete from list
# output: list of items without the deleted item

def delete_item(list, item)
  list.delete(item)
end

# Method to update the quantity of an item
# input: item and new quatity
# steps: access that item and give it a new quantity
# output: list of items with updated quantity
def update_item(list, item, quantity)
  add_item(list, item, quantity)
end

# Method to print a list and make it look pretty
# input:list to print
# steps: Add formatting/style to have hash print out pretty.
# output: pretty printed hash

def look_pretty(hash)
  puts "grocery list"
  hash.each do |key,value|
    puts "#{key} : #{value}"
  end
end

groceries = create_list("")
add_item(groceries,"lemonade", 2)
add_item(groceries,"tomatoes", 3)
add_item(groceries,"onions", 1)
add_item(groceries,"ice cream", 4)
delete_item(groceries, "lemonade")
update_item(groceries, "ice cream", 1)

add_multiple_items(groceries, {"strawberries" => 2, "asparagus" => 2, "milk" => 1})
look_pretty(groceries)


#Reflection

=begin
What did you learn about pseudocode from working on this challenge?

  I think it helps to write out the input/output so you can be sure you're including all the needed arguments and returning the right thing. In terms of writing out the steps, it wasn't very useful for some of the shorter methods where you only have one step to do, but it does help in longer methods to plans out the steps beforehand.

What are the tradeoffs of using Arrays and Hashes for this challenge?

  We decided that using a Hash was better, since you had to store two different pieces of information: the item you want to buy and the quantity of it you want to buy. It seemed easier to have the item as a  key and the quantity as the value, that way they are tied together.

What does a method return?

  If you include an explicit return statement, it will return whatever outputted by the expression connected to the return statement. Otherwise, it will return the output of the last expression that is evaluated in the method.

What kind of things can you pass into methods as arguments?

  You can pass an object of any type as an argument- strings, integers, floats, hashes, arrays, etc.

How can you pass information between methods?

  You can pass info between methods by utilizing the arguments in a way that lets you change the same variable without using a class, like we used "list" here as an argument in many of the methods. You can also use methods within other methods, like how we used look_pretty in create_list and add_item in update_item.

What concepts were solidified in this challenge, and what concepts are still confusing?

  The idea of passing information between methods was solidified in this challenge. I think the thing that most trips me up at this point is the sheer number of built-in methods there are, are knowing when/how to use them.

=end
