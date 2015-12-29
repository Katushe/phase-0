# Simple Substrings

# I worked on this challenge [by myself].


# Your Solution Below
def welcome(address)
  if address.upcase.include? ' CA ' then
    return 'Welcome to California';
  else
    return 'You should move to California';
  end
end