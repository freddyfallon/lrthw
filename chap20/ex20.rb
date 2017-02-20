# creates input_file variable and asigns argument variable to it
input_file = ARGV.first

# creates method expecting single argument
def print_all(f)
  puts f.read # prints the contents of the file to screen
end

def rewind(f)
  f.seek(0) # moves counter to start of file
end

def print_a_line(line_count, f) # creates method expecting two arguments
  puts "#{line_count}, #{f.gets.chomp}" # prints line count and single line of file
end

current_file = open(input_file) # sets current_file equal to file object of input_file

puts "First let's print the whole file:\n" # printing

print_all(current_file) # prints contents of file

puts "Now let's rewind, kind of like a tape"

rewind(current_file) # returns to beginning of file

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file) # sets line number and prints single line

current_line += 1 # increases line number by 1
print_a_line(current_line, current_file)

current_line += 1 # increases line number by 1
print_a_line(current_line, current_file)
