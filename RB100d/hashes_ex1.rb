family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank", "rob", "david"],
            aunts: ["mary", "sally", "susan"]
          }

new_family = family.select do |title, name|
  title == :sisters || title == :brothers
end

puts new_family.values.flatten!