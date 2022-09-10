PASSWORD = "SecreT"

loop do
  puts "Please enter your password:"
  password_attempt = gets.chomp
  if password_attempt == PASSWORD
    puts "Welcome!"
    break
  end
  puts "Invalid password!"
end
    