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
