# creates filename variable, taking CL argument
filename = ARGV.first

# prints a bunch of strings
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (C)."
puts "If you do want that, hit return."

# gets the return
$stdin.gets

# opens the file to a file object in write mode
puts "Opening the file..."
target = open(filename, 'w')

# empties the file
#puts "Truncating the file. Goodbye!"
#target.truncate(0)

# prints to the screen
puts "Now I'm going to ask you for three lines."

# gets input from user and assigns to three variables
print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

# prints to the screen
puts "I'm going to write to the file."

# writes the inputs with new lines in between to the file
target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

# closes the file
puts "And finally, we close it."
target.close
