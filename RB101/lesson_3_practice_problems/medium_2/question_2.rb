# Let's take a look at another example with a small difference in the code:

a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# Answer: Prediction - All three objects have the same object_id.

# Result: Correct!
# Note* In ruby, integers are immutable ie -> there is only one object for the
#       integeer '1' and '2' and so on. Any operation on an integer simply
# =>    returns a new integer. True, false, nil are also handled similarly.
# =>    ex: Every instance of 'true' will same the same object_id.