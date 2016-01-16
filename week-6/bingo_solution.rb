# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [6] hours on this challenge.


# Release 0: Pseudocode
# Outline:
=begin
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  -make an array for the letter choices
  -randomly choose from that array, set to instance variable for letter
  -radomly choose a number from 1-100, set to instance variable for number
  -print out the chosen letter-number combo

# Check the called column for the number called.
  -Note to self:
      -"rows" = indexes of outer array, "columns" = indexes of inner arrays
      -B - column 0, I - column 1, N - column 2, G - column 3, O - column 4
  -iterate through each element of the outer array (aka, the "rows")
  -check the element of the inner arrays at the index corresponding to the called letter (aka the "column") for the called number.
  -For example, if the letter called is "B" it will check the first index (0) of each inner array for the number

# If the number is in the column, replace with an 'x'
  -within the above iteration, if the number is found, change the value at that index to the string 'X'

# Display the board to the console (prettily)
  -iterate through the outer array and print the inner arrays one at a time
=end


# Initial Solution

class BingoBoard
  def initialize(board)
    @bingo_board = board
  end

  def call
    letters = ["B", "I", "N", "G", "O"]
    @call_letter = letters.sample
    @call_number = rand(1..100)
    p "The chosen one is #{@call_letter}-#{@call_number}"
  end

  def check
    case @call_letter
    when "B"
      @bingo_board.each{|row| row[0] = 'X' if row[0] == @call_number}
    when "I"
      @bingo_board.each{|row| row[1] = 'X' if row[1] == @call_number}
    when "N"
      @bingo_board.each{|row| row[2] = 'X' if row[2] == @call_number}
    when "G"
      @bingo_board.each{|row| row[3] = 'X' if row[3] == @call_number}
    else @bingo_board.each{|row| row[4] = 'X' if row[4] == @call_number}
    end
    @bingo_board.each{|row| p row}
  end

end

# Refactored Solution
class BingoBoard
  def initialize(board)
    @bingo_board = board
    @bingo_board.insert(0, ["B", "I", "N", "G", "O"])
  end

  def call
    @call_letter = ["B", "I", "N", "G", "O"].sample
    @call_number = rand(1..100)
    p "The chosen one is #{@call_letter}-#{@call_number}"
  end

  def check
    @bingo_board.each{|row|
      case @call_letter
      when "B"
        row[0] = 'X' if row[0] == @call_number
      when "I"
        row[1] = 'X' if row[1] == @call_number
      when "N"
        row[2] = 'X' if row[2] == @call_number
      when "G"
        row[3] = 'X' if row[3] == @call_number
      else
        row[4] = 'X' if  row[4] == @call_number
      end
    }
    @bingo_board.each{|row|
      row.each{|x|
        if x.to_s.length == 1
          print "  #{x} "
        else print " #{x} "
        end
      }
      puts
    }
  end

end

#Optional Release 5--I went a bit further than just creating a method that creates a legal board after I realised that using a legal board didn't mesh well with just choosing a number from 1-100. So I edited my call function to take into account what range the number should be based on the letter called. And then because I was having fun and I had time I created an additional method that checks whether you've reached "Bingo". Since there were so many changes I just created a new class for this version.

class BingoBoard_legal
  #replace initialize with one that creates a legal board
  def initialize
    @bingo_board = Array.new(5) {|row|Array.new(5){|column| column = 0}}

    #iterate through the outer array, in each "row" assign a number from the correct range to each index. Make sure the numbers are unique-if the length of the original array is equal the the length of the array after uniq (which removes duplicates) has been called, then there are no duplicates. Also, must flatten them because uniq gets confused with nested arrays
    until @bingo_board.flatten.length == @bingo_board.flatten.uniq.length
      @bingo_board.each{|row|
        row[0] = rand(1..15)
        row[1] = rand(16..30)
        row[2] = rand(31..45)
        row[3] = rand(46..60)
        row[4] = rand(61..75) }
    end

    #set the middle free space
    @bingo_board[2][2] = 'X'

    #add the "B.I.N.G.O"
    @bingo_board.insert(0, ["B", "I", "N", "G", "O"])

    #print the board
    p "Your Board is:"
    @bingo_board.each{|row|
      row.each{|x|
        if x.to_s.length == 1
          print "  #{x} "
        else print " #{x} "
        end
      }
      puts
    }
  end

  def call
    @call_letter = ["B", "I", "N", "G", "O"].sample

    #Gotta make sure the numbers called match our now "legal" board, using a case for each letter
    case @call_letter
    when "B"
      @call_number = rand(1..15)
    when "I"
      @call_number = rand(16..30)
    when "N"
      @call_number = rand(31..45)
    when "G"
      @call_number = rand(46..60)
    else @call_number = rand(61..75)
    end
    p "The chosen one is #{@call_letter}-#{@call_number}"
  end

  def check
    @bingo_board.each{|row|
      case @call_letter
      when "B"
        if row[0] == @call_number
          row[0] = 'X'
          puts "You have it!"
        end
      when "I"
        if row[1] == @call_number
          row[1] = 'X'
          puts "You have it!"
        end
      when "N"
        if row[2] == @call_number
          row[2] = 'X'
          puts "You have it!"
        end
      when "G"
        if row[3] == @call_number
          row[3] = 'X'
          puts "You have it!"
        end
      else
        if row[4] == @call_number
          row[4] = 'X'
          puts "You have it!"
        end
      end
    }
    @bingo_board.each{|row|
      row.each{|x|
        if x.to_s.length == 1
          print "  #{x} "
        else print " #{x} "
        end
      }
      puts
    }
  end

  def won?
    @won = false
    #make temp copy without the "B.I.N.G.O"-which confuses checking for mutiple X's
    temp = @bingo_board.dup
    temp.delete_at(0)
    #check if any row is full of X's
    temp.each{|row| @won = true if row.uniq.length == 1}
    #check if any column is full of X's (transpose makes columns <--> rows)
    temp.transpose.each{|row| @won = true if row.uniq.length == 1}
    #check if the diagonals are full of X's
    @won = true if temp[0][0] == "X" && temp[1][1] == "X" && temp[2][2] == "X" && temp[3][3] == "X" && temp[4][4] == "X"
    @won = true if temp[0][4] == "X" && temp[1][3] == "X" && temp[2][2] == "X" && temp[3][1] == "X" && temp[4][0] == "X"
    puts "You got BINGO!!" if @won == true
    p @won
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]
# new_game = BingoBoard.new(board)
# new_game.call
# new_game.check
# puts #to separate original and legal
# new_game_legal = BingoBoard_legal.new
# new_game_legal.call
# new_game_legal.check
# new_game_legal.won?
# #checking to make sure my won? function will return true once it finds a 5-in-a-row
# until new_game_legal.won? == true
#   new_game_legal.call
#   new_game_legal.check
# end



#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

  The most difficult part for me came before I really started "pseudocoding" as the first thing I did was
  draw out the provided array in a notebook and then tried to figure out how the indexes would work and how
  that corresponded to the BINGO letters. Once I figured out that "B" will always correspond to the "0"
  index of the inner arrays and "I" to "1" and so on, thinking through the iteration wasn't too bad since
  I had just recently finished challenge 6.5.
  I think sometimes my pseudocode comes out a little wordy, but that's mostly because I include some of my
  justification for things so that I remember that when I come back to it later.

What are the benefits of using a class for this challenge?

  The board and the called letters/numbers get used in multiple methods. Using a class allows us to set
  these as instance variables and then use them throughout the class without having to pass them in as
  arguments each time.

How can you access coordinates in a nested array?

  Elements in a nested array are accessed much the same as in a singular array, in that you use the array
  name + the index in square brackets. However, since there are multiple arrays, there are multiple indexes,
  so you used mutiple square brackets, where the leftmost is the index in the outer array and then moving
  rightward goes deeper and deeper. For example, in an array like arr = [[1,2,3]], if you're trying to access "2" you would use arr[0][1] since the inner array is at index 0 of the outer array and 2 is at index 1 of the inner array.

What methods did you use to access and modify the array?

  I used a simple "each" to iterate through the array and then simple assignment (=) to modify it. I considered using map, but with map I would have to also explicitly assign the value to itself if the element is not equal to the number I'm looking for or it would make it nil. So it seemed simpler to use each and only modify the one I'm looking for.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

  In my initial/refactored solutions, I didn't really need any new methods. However, once I started on the
  optional portion and then went even further than what it asked I learned quite a few new ones.
      -uniq which returns the array minus duplicates, called by array_name.uniq
      -flatten, which turns a nested array into a singular array, called by array_name.flatten
      -transpose, which switches the "rows" and "columns" in a nested array, called by array_name.transpose

How did you determine what should be an instance variable versus a local variable?

  If it was something that had to be used in a multiple methods and was directly tied to a particular
  instance of the class I used instance variables, otherwise I used a local variable. For example, I used
  the array ["B", "I", "N", "G", "O"] in two different methods, but it didn't really make sense to make it
  an instance variable

What do you feel is most improved in your refactored solution?

  I changed my check function by putting all the cases into a single iteration instead of having a separate iteration included with each case, since it made the code look cleaner/less repetitive.
  Most improved is probably the way I printed the "board". In my initial solution I just printed the "rows" one at a time, so the layout was board-like, but it still had all the trappings of arrays, like the commas and the brackets. Then in my refactored solution, I printed each element one at a time (but keeping the "rows" printing on the same line), this got rid of the commas/brackets. I also added spacing so that each element lines up nicely depending on whether the number has one or two digits. I also inserted an array to the front of the board containing "B.I.N.G.O" in my refactored solution to make the boards look more like real ones.

=end