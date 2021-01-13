#!/usr/bin/env ruby

puts '------------------------------------------------------------'
puts '|                                                          |'
puts '|                 Welcome to Triple-T-Game                 |'
puts '|                                                          |'
puts '------------------------------------------------------------'

puts 'Hi there, welcome to Triple T, Ready!\n\n'

puts 'Game instructions\n'
puts 'The players will be provided a board to make their moves on as shown below.'

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
puts 'If their answer is yes (y), then the game restarts, otherwise, the game goes into sleeping.\n\n'

puts 'Player One: Enter your name please\n'
player1 = gets.chomp
puts "Welcome #{player1}"

puts 'Player Two: Enter your name please\n\n'
player2 = gets.chomp
puts "Welcome #{player2}"

puts 'The Game is starting! Ready, steady, and go!\n'

# Display the game board and

# winner = false
# # Inform Player-1 if it is an invalid move and ask to make a valid move
# puts 'Request Player1 to make move'
# puts 'Player1 please make your move by selecting a number between 1 - 9'
# player1_move = gets.chomp
# puts "Player1 one selected the move of #{player1_move}."

# # Check if Player-1 makes a valid move. If not, give a warning and repeat the move selection.
# puts "Player1' move is invalid. Make a valid move by picking a number between 1 - 9."

# # If Player1's move is valid, then check if Player1 wins, or the game ends with a draw.
# puts 'Player1 wins!'
# puts 'The game ended with draw.'

# puts "#{Player2}, make your move!"
# player2_move = gets.chomp
# puts "Player2 selected the move of #{player2_move}."

# # If Player2's move is valid, then check if Player2 wins, or the game ends with a draw.
# puts 'Player2 wins!'
# puts 'The game ended with draw.'

# # Continue the loop until one player wins or the game ends with a draw
# # Winner is declared or a Tie is declared
# break if winner == true

# puts 'Congratulations you have won the game'

# # Ask players if they would like to continue playing(y/n)
# puts 'Would you like to play again?'
# play_again = gets.chomp
# puts "you have chosen #{play_again}"

# # If one of the players would like to quit the game, declare a thank you message and end the game
# puts 'Thanks for playing!'
