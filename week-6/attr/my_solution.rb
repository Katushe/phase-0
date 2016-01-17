#Attr Methods

# I worked on this challenge [by myself]

# I spent [1.5] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name
  def initialize
    @name = "Kathryn"
  end
end


class Greetings
  def initialize
    @name_data = NameData.new
  end

  def hello
    puts "Hello #{@name_data.name}! How wonderful to see you today."
  end

end

#Driver code
greet = Greetings.new
greet.hello

# Reflection
=begin

Release 1
What are these methods doing?

  The initialize method allows you to create a new instance of the class, and it will assign
  the included values to the instance variables when it is created. The print_info method just
  prints the current values of the variables to the console. The what_is_age, what_is_name, and
  what_is_occupation methods return the current value of the corresponding variable. The
  change_my_age, change_my_name, and change_my_occupation methods modify the value of the
  corresponding variable.

How are they modifying or returning the value of instance variables?

  To return the value, it is enough to simply write out the value, like @variable_name.
  Modifying the variable is done with the assignment operator, like @variable_name = new_value.
  Because of the way the modification methods are defined, the method call outside of the class
  also uses the assignment operator instead of passing the value in as an argument within
  parentheses like we've been doing up til now.

Release 2
What changed between the last release and this release?

  It added an attr_reader method for age. This makes it possible to read(i.e. get the value of)
  the variable outside of the class.

What was replaced?

  You know longer need the what_is_age method to get the value of the age variable. You can
  just call the method that has been defined for you.

Is this code simpler than the last?

  It is simpler since you don't have to take the time to manually define your own method to
  get that value, especially when you take into account that you can replace all the other
  what_is methods. So in general, it's more efficient to be able to get values this way instead
  of defining your own methods for every variable you have, especially if you have a class with
  a lot of variables.

Release 3
What changed between the last release and this release?

  It added an attr_writer method for age. This makes it possible to write to(i.e. set/change
  the value of) the variable outside of the class.

What was replaced?

  You know longer need the change_my_age method to change the value of the age variable. You
  can just call the method that has been defined for you.

Is this code simpler than the last?

  It is simpler since you don't have to take the time to manually define your own method to
  change that value, especially when you take into account that you can replace all the other
  change_my methods. So in general, it's more efficient to be able to get values this way
  instead of defining your own methods for every variable you have, especially if you have a
  class with a lot of variables.

Release 6
What is a reader method?

  A reader method returns a value of an instance variable outside of its class. For example
  if you have a flower class with a variable variable @color, if you specify attr_reader
  :color, then you can call something like rose.color outside of the class to get the value
  of that instance.

What is a writer method?

  A writer method changes a value of an instance variable outside of its class. For example
  if you have a flower class with a variable variable @color, if you specify attr_writer
  :color, then you can call something like rose.color = "red" outside of the class to
  assign/change the value of that instance.

What do the attr methods do for you?

  If you declare attr methods, it allows you to get/set the value of that variable outside of
  the method, like within other classes or in your driver code, without having to manually
  define methods that will return/modify the variable.

Should you always use an accessor to cover your bases? Why or why not?

  No, because you don't always want to be able to both get/set a variable outside of the class.
  For example, if the value you set within the class is important for the code to work
  correctly, you don't want other classes/code to be able to modify it, so you would only want to use a reader.


What is confusing to you about these methods?

  I understand the idea behind them and how to use them when calling methods in something like
  driver code, but I think I need to work through a few more examples on using them to pass
  values between classes before I'm fully comfortable with how that works (it took me a while to realise I had to call name_data.name in the hello method-couldn't understand why the method was returning the object id instead of the string when I just called name_data).

=end