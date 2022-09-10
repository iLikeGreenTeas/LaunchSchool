#Given the array of several numbers below, use an until loop to print each number.

#Expected Output:
#7
#9
#13
#25
#18

numbers = [7, 9, 13, 25, 18]

x = 0
until x == numbers.size
  puts numbers[x]
  x += 1
end


