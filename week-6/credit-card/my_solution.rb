# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Peter Leong].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: the credit card number
# Output: true or false for whether it's a valid number
# Steps:
#1. initialize the credit card class
    #check that it has 16 digits
    #have instance variable for the number-convert integer to string array
# 2. Starting with the second to last digit, double every other digit until you reach the first digit.
    #check index of each element
    #double the even indexes
    #leave odd indexes alone

#3. Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).
  #convert array back into string then split it into single digits
  #then sum up

#4. If the total is a multiple of ten, you have received a valid credit card number!
  #conditional checking if sum % 10 is 0 then return true, else false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(number)
    raise ArgumentError.new("Number is not a valid credit card number!") unless number.to_s.length == 16
    @number = number.to_s.split('')

  end

  def double(number)
    @doubled = @number.map!{|x| if @number.find_index(x).even? then x.to_i * 2 else x = x.to_i end }
  end


  def sum(number)
    @doubled.map!{|x| x.to_s}
    @joined = @doubled.join('').split('')
    @joined.map!{|x| x.to_i}
    @total = 0
    @joined.each { |n| @total = @total + n.to_i }
    return @total

  end

  def check_card
    @temp = double(@number)
    @total = sum(@temp)
   if @total % 10 == 0
     return true
   else
     return false
   end
  end

end

#Refactored Solution
class CreditCard
  def initialize(number)
    raise ArgumentError.new("Number is not a valid credit card number!") unless number.to_s.length == 16
    @number = number.to_s.split('')
  end

  def double(number)
     @number.map!{|x| @number.find_index(x).even? ? x.to_i * 2 : x = x.to_i }
  end

  def sum(number)
    @number.map!{|x| x.to_s}.join('').split('').map!{|x| x.to_i}.reduce(:+)
  end

  def check_card
   sum(double(@number)) % 10 == 0 ? true : false
  end

end

#Reflection
=begin
What was the most difficult part of this challenge for you and your pair?

  It took us a while to realise that we should pass number as an argument to double and sum
  and then call them from within check_card. We also had a bit of trouble with spliting up the digits for suming up, since first you have to turn them into strings, then join them, then split them again.

What new methods did you find to help you when you refactored?

  Reduce with the argument (:+) as a way to sum up an array was new to me/

What concepts or learnings were you able to solidify in this challenge?

  How class methods/variables work when it comes to driver code. For a while, my pair and I were explicitly calling both double and sum in our driver code, and while it seemed to be working, we were failing the tests. So the idea of calling a method within another method instead of outside of the class became clearer once we realised we should call them in check_card.

=end