#!/usr/bin/env ruby

puts '------------------------------------------------------------'
puts '|                                                          |'
puts '|                 Welcome to Triple-T-Game                 |'
puts '|                                                          |'
puts '------------------------------------------------------------'

# Welcoming message
puts 'Hi there, welcome to Triple T, Ready!'

# The guide for players
puts "The players will be provided a board to make their moves on as shown below."   

puts " 1 | 2 | 3 "
puts "-----------"
puts " 4 | 5 | 6 "
puts "-----------"
puts " 7 | 8 | 9 "

puts "When  the game starts, each player will be assigned one of the totems of O and X."
puts "Player1 will start the by making the first move of placing the totem into a cell on the board."
puts "Players will be informed if there is a win or a draw case in the game."
puts "If no win or a draw in the game, Player2 makes the move"
puts "Players will be informed if there is a win or a draw case in the game."
puts "The continues by the move of the other player until one player wins or a draw occurs when no one wins."
puts "For winning the game, one player should have one of the following combinations."
puts "The winning combinations are 123, 456, 789, 147, 258, 369, 159, and 357."
puts "After completing their moves, if no player cat get one of the winning combinations, it is a draw."
puts "After the game ended up with a winner, or a draw, players are asked whether they would like to play again."
puts "If their answer is yes (y), then the game restarts, otherwise, the game goes into sleeping."


# Asking names of players
puts 'Player One: Enter your name please'
player1 = gets.chomp
puts "Welcome #{player1}"

puts 'Player Two: Enter your name please'
player2 = gets.chomp
puts "Welcome #{player2}"

# Ready message
puts "The Game is starting! Ready, steady, and go!"
# Inform players about instructions of the game(place x symbol or o symbol on the board)
puts 'Game instructions'


# Display the game board and
puts "Display the board"
puts    "[ 1 | 2 | 3 ]"
puts    "-------------"
puts    "[ 4 | 5 | 6 ]"
puts    "-------------"
puts    "[ 7 | 8 | 9 ]"

# Inform Player-1 if it is an invalid move and ask to make a valid move
puts "Request Player1 to make move"
puts 'Player1 please make your move by selecting a number between 1 - 9'
player1_move = gets.chomp 
puts "Player1 one selected the move of #{player1_move}."

# Check if Player-1 makes a valid move. If not, give a warning and repeat the move selection.
puts "Player1' move is invalid. Make a valid move by picking a number between 1 - 9." 

# If Player1's move is valid, then check if Player1 wins, or the game ends with a draw.
puts "Player1 wins!"
puts "The game ended with draw."
puts "#{Player2}, make your move!"


# Check if player 1 wins, if not let player 2 make a move

# Ask Player-2 to make a valid move
puts 'Player_2 please make your move'

# Winner is declared
# Continue the loop until one player wins or the game ends with a draw
puts 'Congratulations you have won the game'

# Ask players if they would like to continue playing(y/n)
puts 'Would you like to try again?'
try_again = gets.chomp
puts "you have chosen #{try_again}"

# If one of the players would like to quit the game, declare a thank you message and end the game
puts 'Thanks for playing! See you next time'

# Otherwise, do not break the loop
