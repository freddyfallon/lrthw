# This let's you rename a method/function in a class on te fly
class Microwave
  def on
    puts "The microwave is on"
  end
# here is where the renaming happens
  alias :start :on
end

puts Microwave.new.start
