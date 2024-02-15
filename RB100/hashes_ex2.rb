#What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

hash1 = {red: 'apple', orange: 'orange', blue: 'blueberries'}
hash2 = {orange: 'carrot', green: 'broccoli', yellow: 'potato'}

puts hash1.merge!(hash2)
puts hash1