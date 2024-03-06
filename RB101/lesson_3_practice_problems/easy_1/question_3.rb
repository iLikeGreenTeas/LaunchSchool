# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet " \
  "dinosaur."

# Answer:
puts advice.gsub('important', 'urgent')

# Result: Alternate solution below...

# advice.gsub!('important', 'urgent')