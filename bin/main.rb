#!/usr/bin/env ruby

puts "********************"
puts "*  Triple-T-Game   *"
puts "********************"

puts "Welcome to this game!"

puts "Player-1, please enter your name:"
player1 = gets.chomp

puts "Player-2, please enter your name:"
player2 = gets.chomp

puts "Welcome Player-1 - #{player1} and Player-2 - #{player2}. You are ready to start the game!"

#Create the board, playing ground
puts "Players make their moves in the board"

#create the loop for the trials
gameover = false
winner = ""
loop do
puts "Player-1 -> #{player1} make your move"
#check if player 1 wins, if not let player 2 make a move

puts "Player-2 -> #{player2} make your move"
break if gameover = true
winner = "#{player1 or player2}"
end

#Winner is declared
puts "The winner is #{player1 or player2}, Congratulations Mate!"

puts "Do you want to play again?"
answer = gets.chomp.upcase.to_s

#if Yes, then continue if not then quit the game




