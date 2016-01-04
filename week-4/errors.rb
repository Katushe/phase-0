# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1.75] hours on this challenge.

# --- error -------------------------------------------------------

#cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The file is errors.rb
# 2. What is the line number where the error occurs?
#The line is 170
# 3. What is the type of error message?
# It is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
#The interpreter says it did not expect the end-of-input, rather it expected keyword_end
# 5. Where is the error in the code?
#The error is in the while loop
# 6. Why did the interpreter give you this error?
#While loops need to have their own end statement, while this only had an end statement for the method definition.

# --- error -------------------------------------------------------

south_park = ''

# 1. What is the line number where the error occurs?
# The line is 35
# 2. What is the type of error message?
#It is a name error
# 3. What additional information does the interpreter provide about this type of error?
#It says that 'south_park' is undefined and it doesnt know if it's a local variable or a method
# 4. Where is the error in the code?
#The error is in main
# 5. Why did the interpreter give you this error?
#Line 35 makes a call to south_park, but this has not been defined as a variable or as a method anywhere else in the file.

# --- error -------------------------------------------------------

def cartman(quote)
end
# 1. What is the line number where the error occurs?
#The line is 50
# 2. What is the type of error message?
#It is a no method error
# 3. What additional information does the interpreter provide about this type of error?
#It says the method 'cartman is undefined'
# 4. Where is the error in the code?
#The error is in main
# 5. Why did the interpreter give you this error?
#Line 50 makes a call to the method cartman (the interpretor knows its a method because of the parentheses) but this method has not been defined anywhere in the file.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
#The line is 65
# 2. What is the type of error message?
#It is an argument error
# 3. What additional information does the interpreter provide about this type of error?
#It says there is the wrong number of arguments and '(1 for 0)' which means there's an argument where there shouldn't be one.
# 4. Where is the error in the code?
#The error is on line 69
# 5. Why did the interpreter give you this error?
#The method cartmans_phrase is defined as not having any arguments but then the call to it on 69 uses an argument.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('I hate Kyle')

# 1. What is the line number where the error occurs?
#The line is 84
# 2. What is the type of error message?
#It is an argument error
# 3. What additional information does the interpreter provide about this type of error?
#It says there's the wrong number of arguments and '(0 for 1)' which means there isn't an argument where there shoukd be one.
# 4. Where is the error in the code?
#The error is on line 88
# 5. Why did the interpreter give you this error?
#The method cartman_says is defined as taking in one argument, but the call to it on line 88 does not provide an argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
#The line is 105
# 2. What is the type of error message?
#It is an argument error
# 3. What additional information does the interpreter provide about this type of error?
#It says there is the wring number of arguments and (1 for 2) which means there is only 1 argument provided while there should be 2
# 4. Where is the error in the code?
#It is on line 109
# 5. Why did the interpreter give you this error?
#The method cartmans_lie is defined as taking 2 arguments but then the call to it on line 109 only provides 1 argument.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#The line is 124
# 2. What is the type of error message?
#It is a type error
# 3. What additional information does the interpreter provide about this type of error?
#It says string can't be coerced into Fixnum (which means a small integer)
# 4. Where is the error in the code?
#It is in the '*'
# 5. Why did the interpreter give you this error?
#This is the wrong syntax for this, it is interpreted at 'Respect my authoritay' sets of the number 5, which doesnt make sense. It should be 5 sets of 'Respect my authoritay' and the string should come first.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
#The line is 139
# 2. What is the type of error message?
#It is a zero division error
# 3. What additional information does the interpreter provide about this type of error?
#It says the you divided by 0
# 4. Where is the error in the code?
#It is in the '/'
# 5. Why did the interpreter give you this error?
#You cannot divide by zero.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#The line is 155
# 2. What is the type of error message?
#It is a load error
# 3. What additional information does the interpreter provide about this type of error?
#It says it cannot load such a file
# 4. Where is the error in the code?
#The error is in 'require relative'
# 5. Why did the interpreter give you this error?
#You are trying to attach another file to this one, but that file does not exist, so it cannot be loaded.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?

  I found the first one most dificult to read, even though, because of the hint, I wasn't too thrown off by the line #
  in the error message as I know many others were- I realized that it was going through to the end of the file looking for that 
  missing "end" statement.Instead I was thrown off since the error said it was expecting a 'keyword_end' but the method did 
  already have an "end" statement.

How did you figure out what the issue with the error was?

  Eventally I realised that I had forgotten that while loops also needed their own end statement. I figured it out by looking at some
  example loops but it still took me a while as somehow my brain just kept skipping over that bit in the loops I was looking at
  (I'm more used to languages where methods open/close with curly braces rather than keywords).

Were you able to determine why each error message happened based on the code?

  Yes, I thought most of the error messages provided enough information that I could figure out what the general problem was, 
  and then it was easy to look through the code and figure out the specific problem with those lines.

When you encounter errors in your future code, what process will you follow to help you debug?

I will read the error message first, and try to get a general understanding of what the problem might be so I know what to look 
for in the code. Then I will go look through the code in the line/area where it told me the error is to find/fix the problem.


=end
