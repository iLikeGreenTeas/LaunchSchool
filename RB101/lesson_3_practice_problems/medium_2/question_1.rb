=begin
Every object in Ruby has access to a method called object_id, which returns a
numerical value that uniquely identifies the object. This method can be used to
determine whether two variables are pointing to the same object.

Take a look at the following code and predict the output:
=end

a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# Answer: Prediction - a & c object_id's are identical while b points to a
# =>      different object_id.

# Result: Correct!
# Note* There's no guarantee that an object will have the same object id in two 
# =>    different runs of the program, so never rely on the specific value of 
# =>    the id