def greeting(name)
  puts "Hello #{name}"
end

puts "Enter your name below:"
user_name = gets.chomp
greeting(user_name)