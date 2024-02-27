def string_check(message)
  message.length > 10? puts(message.upcase) : puts("cool")
end

phrase = gets.chomp
string_check(phrase)