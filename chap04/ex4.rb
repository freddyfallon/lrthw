# assigns the number of cars
cars = 100
# assigns the number of spaces in each cars
space_in_a_car = 4
# assigns the number of drivers
drivers = 30
# assigns the number of passengers
passengers = 90
# assigns number of cars not driven
cars_not_driven = cars - drivers
# assigns number of cars_driven
cars_driven = drivers
# assigns the capacity for passengers in each car
carpool_capacity = cars_driven * space_in_a_car
# assigns the average number of passengers per car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

=begin
ERROR:
There are 100 cars available .
There are only 30 drivers available .
There will be 70 empty cars today.
ex4 . rb :14: undefined local variable or method ‘ carpool_capacity ’ for
main : Object ( NameError )
EXPLANATION:
A variable called 'carpool_capacity' has been called on line 14, but it has not been defined.
=end
