# creates variable and asigns it to argument from CL
filename = ARGV.first

# creates variable and asign file object to it
txt = open(filename)

# prints a message to the screen
puts "Here's your file #{filename}:"
# prints the output of the read method called on the txt variable holding the open file object
print txt.read

# prints a message to the screen
print "Type the filename again: "
# creates a new variable with the filename typed in assigned
file_again = $stdin.gets.chomp

# creates variable with the file object assigned
txt_again = open(file_again)

# prints output of read method on the file object
print txt_again.read
txt.close()
txt_again.close()
