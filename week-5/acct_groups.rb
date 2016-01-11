# 0. Pseudocode

# Input: list of names as an array of strings
# Output: in my initial solution, a hash of groups, where the key is the group # and the value is an array of the group members' names. In my refactored solution I found it easier to output an array of arrays
# Steps:
#1. Just return the list if there are less than or equal to 5 people in the list
#2. create a hash
#3. figure out how many groups you need-if the number of people is divisible by 5 create that many groups, otherwise add an extra group
#4. set up a counter to keep track of how many groups have been created
#6. nested loop:
        #outer loop will (until group counter > # of groups determined in step 3:
            #set up a counter to keep track of how many members have been added to a group
            #create a new array
            #evaluate the inner loop to populate the array
            #assign that array to the hash using the group # as the key
            #increase the group counter
        #inner loop will (until member counter reaches 5:
            #add the name at the front of the list to the array at the current member counter
            #delete the name from the list so that the next name will be at the front for the next iteration
            #update the member counter
#7. if the split is uneven, the last group might not have enough members, so check the last group's length. If its less than three, move 2 members from previous-to-last group into last one

# Initial Solution

def acct_groups(list_of_names)
  if list_of_names.length <= 5
    return list_of_names
  end

  groups = Hash.new
  if list_of_names.length % 5 == 0
    num_of_groups = list_of_names.length/5
  else num_of_groups = (list_of_names.length/5) + 1
  end

  group_counter = 1
  until group_counter > num_of_groups
    member_counter = 0
    group_list = Array.new
    until member_counter == 5
      if list_of_names[0] != nil
        group_list[member_counter] = list_of_names[0]
        list_of_names.delete_at(0)
      end
      member_counter += 1
    end
    groups[group_counter] = group_list
    group_counter += 1
  end

  if groups[num_of_groups].length < 3
    losing_members = groups[num_of_groups - 1]
    gaining_members = groups[num_of_groups]
    gaining_members.push(losing_members[0])
    gaining_members.push(losing_members[1])
    losing_members.delete_at(0)
    losing_members.delete_at(0)
  end

  p groups
end



# Refactored Solution
def acct_groups(list_of_names)
  if list_of_names.length <= 5
    return list_of_names
  end
  groups = Array.new
  groups = list_of_names.each_slice(5).to_a

  last = groups.length - 1
  if groups[last].length < 3
    losing_members = groups[last - 1]
    gaining_members = groups[last]
    gaining_members.push(losing_members[0])
    gaining_members.push(losing_members[1])
    losing_members.delete_at(0)
    losing_members.delete_at(0)
  end
  p groups
end


# Driver code

#check list with even split into groups of 5
names = ["Dong Wook Seo","Aaron Hu","Adam Pinsky","Akeem Street","Alex Forger","Andrew Kim","Baron Kwan","Brian Bier","Byron Gage","Carl Conroy","Charlie Bliss","Christopher Bunkers","Cody Kendall","Coline Forde","David Valencia","Emily Claire Bosakowski","Everett Golden","Hagai Zwick","Heather Conklin","Ian Wudarski","Ieronim Oltean","Jake Hamilton","James Boyd","Jasmeet Chatrath","Jenna El-Amin","Jerrie Evans","Joe Case","Jonathan Case","Jonathan Schwartz", "Jonathan Silvestri"]

#check list with uneven split-last group would only have one-must move people around
names2 = ["Dong Wook Seo","Aaron Hu","Adam Pinsky","Akeem Street","Alex Forger","Andrew Kim","Baron Kwan","Brian Bier","Byron Gage","Carl Conroy","Charlie Bliss","Christopher Bunkers","Cody Kendall","Coline Forde","David Valencia","Emily Claire Bosakowski","Everett Golden","Hagai Zwick","Heather Conklin","Ian Wudarski","Ieronim Oltean","Jake Hamilton","James Boyd","Jasmeet Chatrath","Jenna El-Amin","Jerrie Evans","Joe Case","Jonathan Case","Jonathan Schwartz", "Jonathan Silvestri", "Kathryn Garbacz"]

acct_groups(names)
acct_groups(names2)



# Reflection
=begin

What was the most interesting and most difficult part of this challenge?

  The most difficult part was figuring out the best way to split the list up and keep track of each new array. I used nested loops, and figuring out what should happen inside/outside of each loop gave me a bit of trouble.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

  I think I'm getting better at breaking the problem down into smaller steps. I think I need to work on brevity in my pseudocode as my steps tend to become long.

Was your approach for automating this task a good solution? What could have made it even better?

  I think my solution for splitting up the groups in the first place is pretty good. I ran out of time to really work on the bit where it checks whether the groups are each big enough, and I think that could be improved on, and probably integrated into the creation in the first place, since mine is kind if tacked on at the end.

What data structure did you decide to store the accountability groups in and why?

  In my initial solution I used a hash, mostly because I'm not quite comfortable with 2d arrays yet and trying to figure out how to iterate through it was giving me a lot of trouble, while I found a hash much easier to comprehend. When I moved on to refactoring I used a 2d array since each_slice took away the cofusion of iterating over it.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

    This challenge more than any of the others really made me appreciate how much simpler it is to be able to use Ruby methods to iterate through an array rather than writing my own loops. I learned how to use each_slice to break an array into smaller arrays of a certain size.

=end