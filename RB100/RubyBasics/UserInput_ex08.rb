def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
numerator = nil
denominator = nil

loop do
  loop do
    puts "Please enter the numerator:"
    numerator = gets.chomp
    break if valid_number?(numerator)
    puts "Invalid input. Only integers are allowed."
  end
  puts "Please enter the denomenator:"
  denomenator = gets.chomp
  if denomenator.to_i == 0
    puts "Invalid input. A denominator of 0 is not allowed."
    next
  elsif valid_number?(denomenator)
    result = numerator.to_i/denomenator.to_i
    puts "#{numerator} / #{denomenator} is #{result}"
    break
  else
    puts "Invalid input. Only integers are allowed."
  end  
end

