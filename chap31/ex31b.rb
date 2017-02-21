puts "You have landed in the mushroom kingdom. You are MARIO!"
puts "But Bowser is also here. He has noticed you..."
puts "What are you going to do? 1. Say hi, or 2. Ignore him?"

print "> "
bowser = $stdin.gets.chomp

if bowser == "1"
  puts "Bowser says he doesn't like you."
  puts "What is your next move? 1. Flatter him, or 2. Tell him you don't like him either"

  print "> "
  bowser_like = $stdin.gets.chomp
  if bowser_like == "1"
    puts "He blushes and walks off. Great job, I guess?"
  elsif bowser_like == "2"
    puts "He cries and walk off. Idiot."
  else puts "Don't want to play anymore? I guess I understand..."
  end
elsif bowser == "2"
  puts "Bowser walks up to you and says he doesn't like you."
  puts "What ya gonna do? 1. Give him the finger, or 2. Laugh manically"

  print "> "
  bowser_like2 = $stdin.gets.chomp
  if bowser_like2 == "1"
    puts "Bowser laughs and hugs you. Great...job."
  elsif bowser_like2 == "2"
    puts "Bowser doesn't understand why you're laughing. Idiot. Sod him."
  else puts "Why you no play no more? Bye then."
  end
else puts "Why won't you play? See ya sucker."
end
