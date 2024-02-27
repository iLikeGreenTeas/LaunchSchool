loop do
  puts "How many output lines do you want? Enter a number >= 3: (Q to quit):"
  user_number = gets.chomp
  break if user_number.upcase == 'Q'
  if user_number.to_i >= 3
    user_number.to_i.times { puts "Launch School is the best!"}
    next
  end
  puts "That's not enough lines."
end