# creates variables and assigns integers to them
people = 30
cars = 30
trucks = 30

# evaluates whether cars is greater than people
if cars > people
  puts "We should take the cars."
# evaluates whether cars is less than people
elsif cars < people
  puts "We should not take the cars."
# gives instructions if neither is the case
else
  puts "We can't decide."
end

if trucks > cars
    puts "That's too many trucks."
  elsif trucks < cars
    puts "Maybe we could take the trucks."
  else
    puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just tale the trucks."
else
  puts "Fine, let's stay home then."
end
