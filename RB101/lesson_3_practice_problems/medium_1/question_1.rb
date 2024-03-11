# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the
# days before computers had video screens).

# For this practice problem, write a one-line program that creates the following
# output 10 times, with the subsequent line indented 1 space to the right:

=begin
The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!
=end

# Answer:
phrase = "The Flintstones Rock!"
10.times { puts phrase = phrase.rjust(phrase.length + 1) }

# Result: Incorrect.
# 10.times { |number| puts (" " * number) + "The Flintstones Rock!" }