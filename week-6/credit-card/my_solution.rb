# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

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