def adding
for i in 1..6
numbers = []
    puts "At the top i is still #{i}"
    numbers.push(i)
#    i += 1
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end
  puts "The numbers: "
  numbers.each {|num| puts num }
end

adding
