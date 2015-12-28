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