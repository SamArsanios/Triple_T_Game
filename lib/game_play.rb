module GamePlay
  def player_names(number)
    "Player#{number}, Please enter your name"
  end

 def validate_name
    'Please enter a correct name'
  end 

  def assign_totem(player)
    "#{player.name} your totem is #{player.totem}" + "\n\n"
  end

  def display_grid(grid_array)
    puts "    #{grid_array[0]} | #{grid_array[1]} | #{grid_array[2]}
    ---------
    #{grid_array[3]} | #{grid_array[4]} | #{grid_array[5]}
    ---------
    #{grid_array[6]} | #{grid_array[7]} | #{grid_array[8]} " + "\n\n"
  end

  def pick_number(player_name)
    puts "#{player_name}, Please pick an available number"
  end

  def pick_not_valid
    puts 'Your pick is not valid, please make another pick'
  end

  def already_picked_message
    puts 'This number is already pick, please make another pick.'
  end

  def declare_winner(name)
    puts "Congratulations Dude!!!!, #{name}, You are the winner"
  end

  def game_tie
    puts 'The game is a tie!'
  end

  def play_again?
    puts "Would you like to play again? y/n"
    ans = gets.chomp.downcase
    ans 
  end
end

