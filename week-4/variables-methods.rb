#full name greeting

puts 'Hello, what is your first name?'
first_name = gets.chomp
puts 'Ok, now what is your middle name? If you don\'t have one, just press enter'
middle_name = gets.chomp
puts 'Lastly, what is your last name?'
last_name = gets.chomp
puts #this will add a new line
puts 'So your full name is ' + first_name + ' ' +middle_name + ' ' + last_name +'. What a great name! It\'s nice to meet you ' + first_name + ' ' + middle_name + ' ' + last_name +'! :D'

#make output on terminal look less crowded
puts #this will add a new line
puts #this will add a new line

#Bigger, better favorite number

puts 'Hello, what is your favorite number?'
fav_num_as_string = gets.chomp
better_num = fav_num_as_string.to_i + 1
puts #this will add a new line
puts 'Why not ' + better_num.to_s + '? It is bigger than ' + fav_num_as_string + ' and therefore better!'

=begin

How do you define a local variable?

  To define a local variable you give it a name and then assign it a value. For example:
  color = 'blue'.

How do you define a method?

  To define a method you have to include a few things, the word 'def' to signal that you are about to define a method, the name you want to give to the method, and the parameters that the method will accept as arguments. Then would come the code for what you want the method to do, and you must signify the end of the method by writing 'end'. For example:
    def method(argument1,argument2)
        #code here
    end

What is the difference between a local variable and a method?

  To borrow from Pine's explanation, a local variable is like a noun while a method is like a verb. Like you have nouns that do verbs, ruby (and other programming languages) have variables that do methods.

How do you run a ruby program from the command line?

  You would enter ruby followed by the name of the ruby file. For example:
  ruby test.rb

How do you run an RSpec file from the command line?

  You would enter rspec followed by the name of the RSpec file. For example:
  rspec test_spec.rb

What was confusing about this material? What made sense?

  I thought it was all pretty straightforward, and everything made sense. I would like to look into how RSpec works more closely though.

exercise solutions:

https://github.com/Katushe/phase-0/blob/master/week-4/define-method/my_solution.rb

https://github.com/Katushe/phase-0/blob/master/week-4/address/my_solution.rb

https://github.com/Katushe/phase-0/blob/master/week-4/math/my_solution.rb

=end