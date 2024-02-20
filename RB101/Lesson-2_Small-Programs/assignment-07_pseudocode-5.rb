# Write out pseudo-code (both casual and formal) that does the following:

# a method that takes two arrays of numbers and returns the result of merging the
# arrays. The elements of the first array should become the elements at the even
# indexes of the returned array, while the elements of the second array should
# become the elements at the odd indexes. For instance:

# merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
# You may assume that both array arguments have the same number of elements.

# ------------------------------------------------------------------------------

# PSEUDO-CODE:

# Given 2 arrays of integers of the same number of elements:

# Iterate through each element in array1:
# =>Push array1[iteration] to new_array[iterator2 = 0]
# =>iterator2 = iterator2 + 2
# After iterating through all elements in array1:
# Iterate through each element in array2:
# =>Push array2[iteration] to new_array[iterator3 = 1]
# =>iterator3 = iterator3 + 2
# After iterating through all elements in array2, PRINT new_array to user.
 
# ------------------------------------------------------------------------------

# FORMAL PSEUDO-CODE:

# Given 2 arrays on itegers of equal length named array1 and array2 respectively:
# SET counter1 = 0
# SET counter2 = 1

# WHILE iterator <= length of array1:
# =>PUSH array1[iterator] to new_array[counter1]
# =>counter1 = counter1 + 2
# iterator = iterator + 1

# WHILE iterator <= length of array2:
# =>PUSH array[iterator] to new_array(counter2)
# =>counter2 = counter2 + 2
# iterator = iterator + 1

# PRINT new_array
# ------------------------------------------------------------------------------

# CODE:

array1 = [1, 2, 3]
array2 = [4, 5, 6]
new_array = []

counter1 = 0
counter2 = 1
x = 0
y = 0

while x < array1.length
  new_array[counter1] = array1[x]
  counter1 += 2
  x += 1
end

while y < array2.length
  new_array[counter2] = array2[y]
  counter2 += 2
  y += 1
end

puts new_array.inspect
