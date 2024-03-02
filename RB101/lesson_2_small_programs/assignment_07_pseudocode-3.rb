#Write out pseudo-code (both casual and formal) that does the following:

#a method that takes an array of integers, and returns a new array with every 
#other element from the original array, starting with the first element. 

#For instance:

#every_other([1,4,7,2,5]) # => [1,7,5]
#-------------------------------------------------------------------------------


#PSEUDO-CODE:

#Given an array of integers:

#Iterate through every even array element starting with array element 1
# =>Push array element at current iteration to new_array

#After iterating through the given array of integers, return new_array to user.

#-------------------------------------------------------------------------------

#FORMAL PSEUDO-CODE:

#Given an array of integers name int_array:

#SET iterator = 1
#SET new_array array = int_array[0]

#WHILE iterator <= length of given array of integers:
# =>IF iterator = even:
# =>    Push int_array[iterator] to new_array

#Iterator = Iterator + 1

#PRINT new_array
