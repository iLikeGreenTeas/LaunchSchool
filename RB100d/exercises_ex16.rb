contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
x = 0
[:email, :address, :phone].each do |key|
  contacts[contacts.first][key] = contact_data[x]
  x += 1
end

puts contacts
  