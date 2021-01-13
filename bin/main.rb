#!/usr/bin/env ruby
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'
require_relative '../lib/gameboard.rb'
require_relative '../lib/game_play.rb'

# Initialize the game
player1 = Players.new('O')
player2 = Players.new('X')

valid_player_pick = 0

game = Game.new(player1,player2)

puts GamePlay.welcome

puts GamePlay.instructions

initial_player = proc do |player, number|
    puts GamePlay.player_names(number)
    player.name = gets.chomp.capitalize
    while player.name.empty?
        puts Game.validate_name
        player.name = gets.chomp.capitalize
    end
    puts GamePlay.assign_totem(player)
end

initial_player.call(player1, 1)
initial_player.call(player2, 2)

validate_pick = proc do |pick|
  valid_pick = pick
  until board.pick_valid?(pick) && board.not_picked?(pick)
    if !board.pick_valid?(pick)
      puts game.pick_not_valid
      pick = gets.chomp.to_i
    elsif !board.not_picked?(pick)
      puts game.already_picked
      pick = gets.chomp.to_i
    end
  end
  valid_pick = pick
end
turn = proc do |player|
  puts game.pick_number(player.name)
  pick = gets.chomp.to_i
  validate_pick.call(pick)
  pick = valid_pick
  player.picks_array << pick
  board.update_grid(pick, player.totem)
  puts game.display_grid(board.grid)
end
loop do
  turn.call(player1)
  break if player1.winner? || board.grid_filled?
  turn.call(player2)
  break if player2.winner? || board.grid_filled?
end
# end of the game
if player1.winner?
  puts game.the_winner(player1.name)
elsif player2.winner?
  puts game.the_winner(player2.name)
else
  puts game.draw
end


# validate_pick = proc do |pick|
#     valid_pick = pick
#     until board.pick_valid?(pick) && board.not_picked?(pick)
#       if !board.pick_valid?(pick)
#         puts game.pick_not_valid
#         pick = gets.chomp.to_i
#       elsif !board.not_picked?(pick)
#         puts game.already_picked
#         pick = gets.chomp.to_i
#       end
#     end
#     valid_pick = pick
#   end
#   turn = proc do |player|
#     puts game.pick_number(player.name)
#     pick = gets.chomp.to_i
#     validate_pick.call(pick)
#     pick = valid_pick
#     player.picks_array << pick
#     board.update_grid(pick, player.totem)
#     puts game.display_grid(board.grid)
#   end
#   loop do
#     turn.call(player1)
#     break if player1.winner? || board.grid_filled?
#     turn.call(player2)
#     break if player2.winner? || board.grid_filled?
#   end
#   # end of the game
#   if player1.winner?
#     puts game.the_winner(player1.name)
#   elsif player2.winner?
#     puts game.the_winner(player2.name)
#   else
#     puts game.draw
#   end