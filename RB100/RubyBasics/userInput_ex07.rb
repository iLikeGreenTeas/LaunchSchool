PASSWORD = "SecreT"
USERNAME = "admin"

loop do
  puts "please enter your username:"
  username_attempt = gets.chomp
  puts "Please enter your password:"
  password_attempt = gets.chomp
  break if username_attempt == USERNAME && password_attempt == PASSWORD
  puts "Authorization failed!"
end

puts "Welcome!"  