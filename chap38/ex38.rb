ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."

# Ruby looks for an object called ten_things, finds it, looks for split, finds it,
# Calls ' ' as it's argument but then ten_things as a sub-argument
stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there's 10 items

while stuff.length != 10
  # checks that more_stuff exists, finds it does, looks for .pop, finds it
  # executes it (by removing last element) with more_stuff as its argument and assigns it to next_one
  next_one = more_stuff.pop
  puts "Adding #{next_one}"
  # checks that stuff exists, finds it does, looks for push, finds it
  # executes it (by adding contents of next_one to end of stuff)
  # uses next_one as first argument, then stuff as a sub-argument
  stuff.push(next_one)
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")
