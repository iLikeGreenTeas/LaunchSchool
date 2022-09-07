puts "How old are you?"
age_string = gets.chomp

age = age_string.to_i
future_age = 0

4.times do
  future_age = future_age + 10
  new_age = age + future_age
  puts "In #{future_age} years you will be:"
  puts new_age
end
  