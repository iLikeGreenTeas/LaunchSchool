# Given the hash below
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Create an array containing only two elements: Barney's name and Barney's number.

# Answer:
flintstones_array = flintstones.flatten
puts barney_array = flintstones_array[4,2]

# Result: Correct. Alternate solution below
# puts flintstones.assoc("Barney")