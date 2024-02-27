numbers = [1, 2, 3, 4, 5]
doubled_numbers = Array.new
numbers.map do |int|
  doubled_numbers.push(int * 2)
end

p doubled_numbers