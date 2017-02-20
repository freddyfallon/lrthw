# creates variable and assigns 10 to it
types_of_people = 10
# creates variable and sets it to string with interpolation, embeding variable
x = "There are #{types_of_people} types of people."
# creates variable and asigns a string to it
binary = "binary"
do_not = "don't"
# creates a variable, assigns a string with two variables in it using interpolation
y = "Those who know #{binary} and those who #{do_not}."

# prints x and y to the screen with new lines at the end of each
puts x
puts y

#prints two strings with string interpolation within, new lines at the end of each
puts "I said #{x}."
puts "I also said #{y}."

# creates variable and assigns a boolean to it
hilarious = false
# creates variable and asigns string with string interpolation
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

#prints variable to screen
puts joke_evaluation

# assigns two strings to different variables
w = "This is the left side of..."
e = "a string with a right side."

# concatenates the two strings with two variables
puts w + e

# double quoutes necessary because string interpolation not possible with single quotes
