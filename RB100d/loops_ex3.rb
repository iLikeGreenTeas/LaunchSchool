def countdown(number)
  if number <= 0
    puts number
  else
    puts number
    countdown(number - 1)
  end
end
    
x = gets.chomp.to_i
countdown(x)
