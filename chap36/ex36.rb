module Ex36
  def Ex36.flag_pole
    puts "You go up a pipe, taking you out of the water."
    puts "It's the end of the level!"
    puts "Do you try to go as high on the pole as you can?"
    puts "Or look for a secret?"
    print "> "
    choice = $stdin.gets.chomp
    if choice.downcase.include?("pole") || choice.downcase.include?("high")
      puts "Good choice. You get a high score."
      puts "Plus there never was a secret! Haha."
      puts "GAME OVER!"
      exit(0)
    elsif choice.downcase.include?("secret")
      puts "You idiot! There wasn't a secret."
      puts "Now you're going to get a terrible score."
      puts "GAME OVER!"
      exit(0)
    else puts "Ugh, why can't you type properly. Forget it."
      exit(0)
    end
  end

  def Ex36.swim
    puts "You swim for a while."
    puts "All of a sudden, you see five question mark blocks."
    puts "Which one do you hit? First, second, third, fourth or fifth?"
    question_blocks = ["coin", "coin", "star", "mushroom", "coin"]
    choice = $stdin.gets.chomp
    if choice.downcase.include?("first") || choice.downcase.include?("1") || choice.downcase.include?("one")
      puts "You got a #{question_blocks[0]}."
      Ex36.flag_pole
    elsif choice.downcase.include?("second") || choice.downcase.include?("2") || choice.downcase.include?("two")
      puts "You got a #{question_blocks[1]}."
      Ex36.flag_pole
    elsif choice.downcase.include?("third") || choice.downcase.include?("3") || choice.downcase.include?("three")
      puts "You got a #{question_blocks[2]}."
      Ex36.flag_pole
    elsif choice.downcase.include?("fourth") || choice.downcase.include?("4") || choice.downcase.include?("four")
      puts "You got a #{question_blocks[3]}."
      Ex36.flag_pole
    elsif choice.downcase.include?("fifth") || choice.downcase.include?("5") || choice.downcase.include?("five")
      puts "You got a #{question_blocks[4]}."
      Ex36.flag_pole
    else puts "Huh? You've wasted all the time. Now you're dead."
      puts "GAME OVER!"
      exit(0)
    end
  end

  def Ex36.pipe_water
    puts "HAHAHA! You can't go back up pipes. Move along..."
    Ex36.swim
  end

  def Ex36.pipe
    puts "Oh god, it's one of those annoying water levels."
    puts "The ones with the fish that chase you around. Sigh."
    puts "What are you going to do?"
    puts "Go back up the pipe? Or swim for a bit."
    print "> "
    choice = $stdin.gets.chomp
    if choice.downcase.include?("pipe") || choice.downcase.include?("up")
      Ex36.pipe_water
    elsif choice.downcase.include?("swim")
      Ex36.swim
    else puts "Huh? You've wasted all the time. Now you're dead."
      puts "GAME OVER!"
      exit(0)
    end
  end

  def Ex36.explore
    puts "A Goombah walks into you. Now you're dead."
    puts "GAME OVER!"
    exit(0)
  end

def Ex36.start
    puts "You're in the mushroom kingdom. You are Mario!"
    puts "You can see a pipe. Do you go down the pipe?"
    puts "Or do you explore?"
    print "> "
    choice = $stdin.gets.chomp
    if choice.downcase.include?("pipe") || choice.downcase.include?("down")
      puts "Down we go!"
      Ex36.pipe
    elsif choice.downcase.include?("explore") || choice.downcase.include?("water")
      puts "You start to explore..."
      Ex36.explore
    else puts "Ugh what? Let's start at the top"
      Ex36.start
    end
end
end
Ex36.start
