# Programmatically determine if 42 lies between 10 and 100.

# hint: Use Ruby's range object in your solution.

# Answer:
number = 42
range = 10..100

puts ((number >= range.first) && (number <= range.last)) ? true : false

# Result: Alternate solution:
# 10..100.cover?(42)