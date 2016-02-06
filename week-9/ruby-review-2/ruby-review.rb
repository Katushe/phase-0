# Drawer Debugger

# I worked on this challenge [with: Tyler Doerschuk ].
# I spent [0.5] hours on this challenge.

# Original Code

class Drawer

  attr_reader :contents

  # Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    puts "Your drawer is empty."
    @contents.clear
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end

end

class Silverware
  attr_reader :type

  # Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    @clean = true
  end

end

# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean_silverware #=> this should be false


# Reflection
=begin
What concepts did you review in this challenge?

  The use of driver code, and the process of reading through someone else's code to figure out what they were trying to do and fix their errors.

What is still confusing to you about Ruby?

  At this point, I think I have a fairly good grasp of the concepts we've done
  so far. My biggest challenge at the moment is getting used to switching between
  languages more fluidly (I still find myself making syntax errors when going
  from Ruby <-> JS)

What are you going to study to get more prepared for Phase 1?

  I would like to look in to recursion a bit, just because I've hit upon it quite a few times during
  research in the past few weeks but mostly put it on the backburner since we weren't getting into
  it yet and I didn't want to get too off track.

=end