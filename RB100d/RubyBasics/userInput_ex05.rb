loop do
  puts "How many output lines do you want? Enter a number >= 3:"
  user_number = gets.chomp.to_i
  if user_number >= 3
    user_number.times { puts "Launch School is the best!"}
    break
  end
  puts "That's not enough lines."
end