famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.

# Answer:
puts "Four score and " + famous_words
puts "Four score and #{famous_words}"

# Result: Additional alternatives:
# famous_words.prepend("Four score and ")
# "Four score and " << famous_words