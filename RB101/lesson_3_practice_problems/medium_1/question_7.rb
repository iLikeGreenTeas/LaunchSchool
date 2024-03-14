# One day Spot was playing with the Munster family's home computer and he wrote
# a small program to mess with their demographic data:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

# After writing this method, he typed the following...and before Grandpa could
# stop him, he hit the Enter key with his tail:

puts mess_with_demographics(munsters)

# Did the family's data get ransacked? Why or why not?

# Answer:
# Yes! each method mutates the values of the elements it is working with.

# Result: Partially Correct - Complete explanation below:
#  Spot's demo_hash is pointing to the munsters hash. In this case, the program
# does not create a new hash for the result -- it just uses the existing hash
# as-is. So the actual hash object that is being messed with inside of the
# method IS the munsters hash.

# The each method itself does not mutate the value of the caller itself. It
# merely passes each element to the provided block.