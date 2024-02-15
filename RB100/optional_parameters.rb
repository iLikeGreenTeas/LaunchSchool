def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name}, and I'm #{options[:age]} years old. Also, I am #{options[:height]} tall."
  end
end

greeting('Abdul')
greeting('Abdul', {age: 35, height: '6ft'})
