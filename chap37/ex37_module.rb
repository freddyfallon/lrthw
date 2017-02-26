# lets your put methods and such into nice containers, called modules!
module Hello
  def Hello.bonjour(name)
    puts "Hello #{name}."
  end
end

Hello.bonjour("Freddy")
