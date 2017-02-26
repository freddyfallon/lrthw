# yield will take the arument given (in curlies) and return it
def bonjour
puts "Bonjour!"
yield
end

bonjour{puts "HELLO"}
