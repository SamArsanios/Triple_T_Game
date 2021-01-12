#!/usr/bin/env ruby

puts '------------------------------------------------------------'
puts '|                                                          |'
puts '|                 Welcome to Triple-T-Game                 |'
puts '|                                                          |'
puts '------------------------------------------------------------'

# Create the board, playing ground

# Welcoming message
puts 'Hi there, welcome to Triple T, Ready!'

# Asking names of players
puts 'Player One: Enter your name please'
player1 = gets.chomp
puts "Welcome #{player1}"

puts 'Player Two: Enter your name please'
player2 = gets.chomp
puts "Welcome #{player2}"

# Ready message
# Inform players about instructions of the game(place x symbol or o symbol on the board)
puts 'Game instructions'

# Display the game board

# Create a game loop
while game
end

# Inform Player-1 if it is an invalid move and ask to make a valid move
puts 'Player_1 please make your move'

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
