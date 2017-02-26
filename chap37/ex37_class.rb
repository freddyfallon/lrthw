# creates a class
class Animal
  def initialize(name, species)
# turns the arguments into object variables
    @name = name
    @species = species
# runs the animal_message method
    animal_message
  end

  def animal_message
# uses string interpolation and calls the object variables
    puts "I'm #{@name} and I'm a #{@species}."
  end
end

# calls an instance of the class with arguments
Animal.new("John", "bear")
