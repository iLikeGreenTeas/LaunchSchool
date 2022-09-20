def add(int1, int2)
  int1 + int2
end

def multiply(int1, int2)
  int1 * int2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36