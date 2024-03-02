#Write out pseudo-code (both casual and formal) that does the following:

#a method that determines the index of the 3rd occurrence of a given character 
#in a string. For instance, if the given character is 'x' and the string is 
#'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the 
#given character does not occur at least 3 times, return nil.
#-------------------------------------------------------------------------------


#PSEUDO-CODE:

#Given a string and a character:
#SET location = null
#SET counter = 0

#Iterate through each character in the given string
# =>IF (the current character in the iteration = the given character)
# =>    counter = Counter + 1
# =>IF counter = 3:
# =>    SET location = iteration
# =>    Exit iteration

#After exiting iterations loop, PRINT "The index of the 3rd " + given character 
#+ "is " + location"."

#-------------------------------------------------------------------------------

#FORMAL PSEUDO-CODE:

#Given a string named word, and given a character named letter:

#SET location = null
#SET counter = 0

#WHILE iteration <= length of word:
# =>IF word[iteration] == letter:
# =>    counter = counter + 1
# =>IF counter == 3:
# =>    SET location = iteration
# =>    Exit WHILE loop

#iteration + iteration + 1

#PRINT "The index of the 3rd " + letter + "is " + location"."