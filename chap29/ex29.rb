people = 20
cats = 30
dogs = 15

if people < cats
  puts "Too many cats! The world is doomed!"
end

if people > cats
  puts "Not many cats! The world is saved!"
end

if people < dogs
  puts "The world is drooled on!"
end

if people > dogs
  puts "The world is dry!"
end

dogs += 5

if people >= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs."
end

if people == dogs
  puts "People are dogs."
end

=begin
What do you think the if does to the code under it?
Checks to see if a condition is true and executes code if so.
Why does the code under the if need to be indented two spaces?
It doesn't, but it makes it easier to read.
What happens if it isn't indented?
Nothing, just reads worse.
Can you put other boolean expressions from Exercise 27 in the if-statement? Try it.
Yes
What happens if you change the initial values for people, cats, and dogs?
It could change which if statements evaluate to true and false
=end
