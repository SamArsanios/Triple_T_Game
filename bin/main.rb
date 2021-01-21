#!/usr/bin/env ruby

# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/BlockLength
# rubocop:disable Layout/LineLength

require_relative '../lib/player.rb'
require_relative '../lib/game.rb'
require_relative '../lib/gameboard.rb'

def welcome
  system('clear')
  puts '------------------------------------------------------------'
  puts '|                                                          |'
  puts '|                 Welcome to Triple-T-Game                 |'
  puts '|                                                          |'
  puts '------------------------------------------------------------'
  puts 'Hi there, welcome to Triple T, Ready!' + "\n\n\n"
end

welcome

def instructions
  system('clear')
  puts 'Game Instructions'
  puts '-----------------'
  puts "\n"
  puts 'The players will be provided a board to make their moves on as shown below.' + "\n\n"
  puts ' 1 | 2 | 3 '
  puts '-----------'
  puts ' 4 | 5 | 6 '
  puts '-----------'
  puts ' 7 | 8 | 9 '
  puts "\n"
  puts 'When  the game starts, each player will be assigned one of the totems of O and X.' + "\n\n"
  puts 'Player1 will start the by making the first move of placing the totem into a cell on the board.' + "\n\n"
  puts 'Players will be informed if there is a win or a draw case in the game.' + "\n\n"
  puts 'If no win or a draw in the game, Player2 makes the move' + "\n\n"
  puts 'Players will be informed if there is a win or a draw case in the game.' + "\n\n"
  puts 'The continues by the move of the other player until one player wins or a draw occurs when no one wins.' + "\n\n"
  puts 'For winning the game, one player should have one of the following combinations.' + "\n\n"
  puts 'The winning combinations are 123, 456, 789, 147, 258, 369, 159, and 357.' + "\n\n"
  puts 'After completing their moves, if no player cat get one of the winning combinations, it is a draw.' + "\n\n"
  puts 'After the game ended up with a winner, or a draw, players are asked whether they would like to play again.' + "\n\n"
  puts 'If their answer is yes (y), then the game restarts, otherwise, the game goes into sleeping.' + "\n\n"
end

puts "Enter 'y' if you want to see the instructions (Press enter to continue)"
instructions if gets.chomp.casecmp('y').zero?

loop do
  # Initialize the game
  player1 = Players.new('O')
  player2 = Players.new('X')
  valid_player_pick = 0
  game = Game.new(player1, player2)

  initial_player = proc do |player, number|
    puts game.player_names(number)
    player.name = gets.chomp.capitalize
    while player.name.empty?
      puts game.validate_name
      player.name = gets.chomp.capitalize
    end
    puts game.assign_totem(player)
  end

  # Initialize the board
  puts 'Board'
  puts '-----' + "\n\n"
  board = GameBoard.new
  puts game.display_grid(board.grid)

  # Validation of moves
  validation = proc do |pick|
    valid_player_pick = pick
    until board.validate_pick?(pick) && board.already_picked(pick)
      if !board.validate_pick?(pick)
        puts game.pick_not_valid
        pick = gets.chomp.to_i
      elsif !board.already_picked(pick)
        puts game.already_picked
        pick = gets.chomp.to_i
      end
    end
    valid_player_pick = pick
  end

  # Turns of players
  turn = proc do |player|
    puts game.pick_number(player.name)
    pick = gets.chomp.to_i
    validation.call(pick)
    pick = valid_player_pick
    player.picks_arr << pick
    board.replace_grid(pick, player.totem)
    puts game.display_grid(board.grid)
  end

  board.clear_board

  initial_player.call(player1, 1)
  initial_player.call(player2, 2)

  puts game.display_grid(board.grid)

  loop do
    turn.call(player1)
    break if player1.winning? || board.fill_grid?

    turn.call(player2)
    break if player2.winning? || board.fill_grid?
  end

  if player1.winning?
    puts game.declare_winner(player1.name)
  elsif player2.winning?
    puts game.declare_winner(player2.name)
  else
    puts game.game_tie
  end
  board.clear_board
  puts 'Would you like to play again? y/n'
  ans = gets.chomp.downcase
  break if ans != 'y'
end

# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/BlockLength
# rubocop:enable Layout/LineLength
