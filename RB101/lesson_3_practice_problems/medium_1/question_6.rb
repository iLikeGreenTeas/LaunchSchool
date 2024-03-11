# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# Answer:
# 42 or original 'answer' value

# Result: Incorrect. Correct answer is '34'
# This is due to scoping rules of 'answer' vs 'new_answer'