numbers = []
x = 0

while x < 5
  numbers[x] = rand(0..99)
  x += 1
end

puts numbers