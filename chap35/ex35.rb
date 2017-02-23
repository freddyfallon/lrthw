def gold_room
  puts "This room is full of gold. How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

  # this line has a bug, so fix it
  if choice =~ /\p{N}/
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy. You win!"
    exit(0)
  else
    dead("You greedy bastard")
  end
end

def bear_room
  puts "There's a bear in here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false

  while true
    print "> "
    choice = $stdin.gets.chomp
    if choice.downcase == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif choice.downcase == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif choice.downcase == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice.downcase == "open door" && bear_moved
      gold_room
    elsif choice.downcase == "open door" && !bear_moved
      dead("The bear is in the way! It eats your face. Good job!")
    else
      puts "I have no idea what that means"
      bear_room
    end
  end
end
def chthulu_room
  puts "Here you see the great evil Chthulu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat you head?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.downcase.include? "flee"
    start
  elsif choice.downcase.include? "head"
    dead("Well that was tasty!")
  else
    chthulu_room
  end
end

def pizza_room
  puts "You're in what seems like a deadly cellar."
  puts "Ahead of you is a talking pizza"
  puts "Do you run away or try to eat the pizza?"
  print "> "
  choice = $stdin.gets.chomp

  if choice.downcase.include?("run")
    dead("The pizza shot you with his gun he got at Dominos.")
  elsif choice.downcase.include?("eat")
    puts "The pizza likes it when people try to eat him. Good job!"
    puts "The pizza leads you to another door..."
    gold_room
  else puts "Let's try it again."
    pizza_room
  end
end

def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left. But there is also a hole in the floor."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.downcase == "left"
    bear_room
  elsif choice.downcase == "right"
    chthulu_room
  elsif choice.downcase.include?("hole")
    pizza_room
  else
    puts "Let's try that again"
    start
  end
end

start
