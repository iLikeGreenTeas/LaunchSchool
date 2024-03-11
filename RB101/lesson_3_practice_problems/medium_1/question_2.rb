# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# Answer:  
# Implinict conversion of Int to String object attempted. The program 
# is saying that the int value (40 + 2) cannot be added to the sentence
# mathematically.
# We can try the following:

puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s

# Result: Correct!