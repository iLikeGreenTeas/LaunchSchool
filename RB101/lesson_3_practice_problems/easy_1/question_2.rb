# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

=begin
  1. what is != and where should you use it?
    Answer: This is the not equivalent operator in Ruby syntax. This is used
    in a conditional statement.
    
    Result: Correct!
    
  2. put ! before something, like !user_name
    Answer: Negation operator. Example: !true = false.
    
    Result: Correct! It turns any value into the opposite of its boolean equiavalent.
    
  3. put ! after something, like words.uniq!
    Answer: Mutates the caller or argument (original memory space).
    
    Result: Incorrect. This is part of the method name, and not Ruby syntax.
    
  4. put ? before something
    Answer: If the ? is before a single character, it represents a single 
      character string. Otherwise, the ? before a variable or method is not 
      supported. 
      
    Result: Incorrect interpretation of question. ? : is the ternary operator
    
  5. put ? after something
    Answer: Makes it a boolean. 
    
    Result: Incorrect. This is part of the method name, and not Ruby syntax.
    
  6. put !! before something, like !!user_name
    Answer: This is a double negation or double bang operator that turns any
      value into its boolean equivalent.
      
    Result: Correct!
    
=end
