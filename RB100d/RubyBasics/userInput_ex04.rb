def user_input
  
  puts "Do you want me to print 'something'? (y/n)"
  message = gets.upcase.chomp
  
  case (message)
  when 'Y'
    puts 'something'
  when 'N'
    return
  else
    puts "Invalid input! Please enter y or n"
    user_input
  end
end

user_input

 