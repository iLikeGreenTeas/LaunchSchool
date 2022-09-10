first_number = nil
second_number = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def validate_integers?(int1, int2)
  (int1.to_i.negative? || int2.to_i.negative?) && (int1.to_i.positive? || int2.to_i.positive?)
end

loop do
  puts "Please enter a positive or negative integer:"
  first_number = gets.chomp
  puts "Please enter another positive or negative integer:"
  second_number = gets.chomp
  
  if valid_number?(first_number) && valid_number?(second_number) == false
    puts "Invalid input. Only non-zero integers are allowed." 
    next
  end
  
  if validate_integers?(first_number, second_number)
      break
  else
      puts "Sorry. One integer must be positive, one must be negative."
  end
end

puts "#{first_number.to_i} + #{second_number.to_i} = #{first_number.to_i + second_number.to_i}" 