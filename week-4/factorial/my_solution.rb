# Factorial

# I worked on this challenge [by myself, with: Mollie Stein ].


=begin
Input: number: non-negative integer
output: answer: starts off as 1
loop from 1 to number, taking the product along the way
return the answer
=end

# Your Solution Below
def factorial(number)
  answer = 1
  for i in 1..number
    answer = answer * i
    i += 1
  end
  return answer
end
