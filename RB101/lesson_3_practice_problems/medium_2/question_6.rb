#How could the following method be simplified without changing its return value?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# Answer:
def color_valid(color)
  "blue" || "green" ? true : false
end

# Result: Incorrect!
def color_valid(color)
  color = "blue" || color = "green"
end