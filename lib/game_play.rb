module GamePlay
    def welcome
        puts '------------------------------------------------------------'
        puts '|                                                          |'
        puts '|                 Welcome to Triple-T-Game                 |'
        puts '|                                                          |'
        puts '------------------------------------------------------------'
        puts 'Hi there, welcome to Triple T, Ready!'
    end

    def instructions
        puts 'Game instructions\n'
        puts 'The players will be provided a board to make their moves on as shown below.\n'

        puts ' 1 | 2 | 3 '
        puts '-----------'
        puts ' 4 | 5 | 6 '
        puts '-----------'
        puts ' 7 | 8 | 9 '

        puts 'When  the game starts, each player will be assigned one of the totems of O and X.'
        puts 'Player1 will start the by making the first move of placing the totem into a cell on the board.'
        puts 'Players will be informed if there is a win or a draw case in the game.'
        puts 'If no win or a draw in the game, Player2 makes the move'
        puts 'Players will be informed if there is a win or a draw case in the game.'
        puts 'The continues by the move of the other player until one player wins or a draw occurs when no one wins.'
        puts 'For winning the game, one player should have one of the following combinations.'
        puts 'The winning combinations are 123, 456, 789, 147, 258, 369, 159, and 357.'
        puts 'After completing their moves, if no player cat get one of the winning combinations, it is a draw.'
        puts 'After the game ended up with a winner, or a draw, players are asked whether they would like to play again.'
        puts 'If their answer is yes (y), then the game restarts, otherwise, the game goes into sleeping.'
    end
    
    def player_names(number)
        "\nPlayer#{number}, Please enter your name"
    end

    def validate_name
        "\nPlease enter a correct name\n"
    end

    def assign_totem(player)
        "\n#{player.name} your totem is #{player.totem}\n"
    end

    def display_grid(grid_array)
        "\n#{grid_array[0]} | #{grid_array[1]} | #{grid_array[2]}
        ---------
        #{grid_array[3]} | #{grid_array[4]} | #{grid_array[5]}
        ---------
        #{grid_array[6]} | #{grid_array[7]} | #{grid_array[8]}\n \n"
    end

    def pick_number(player_name)
        puts "#{player_name}, Please pick an available number"
    end

    def pick_not_valid
        puts "Your pick is not valid, please make another pick"
    end

    def already_picked_message
        puts "This number is already pick, please make another pick."
    end

    def declare_winner
        puts "Congratulations Dude!!!!, You are the winner"
    end

    def game_tie
        puts "The game is a Tie!, Play Again!"
    end
end