# This let's you rename a method in a class on te fly
class Microwave
  def on
    puts "The microwave is on"
  end

  alias :start :on
end

puts Microwave.new.start
