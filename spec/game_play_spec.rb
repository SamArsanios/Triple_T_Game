require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/gameboard.rb'

describe Game do
  attr_accessor :player1, :player2, :name, :picks_arr, :totem, :grid

  let(:game) { Game.new(player1, player2) }
  let(:player) { Players.new(name, picks_arr, totem) }
  let(:board) { GameBoard.new }
  let(:game_play) { Class.new { extend GamePlay } }

  describe '#player_names' do
    it 'returns a string' do
      expect(game.player_names(1)).to eql('Player1, Please enter your name')
    end
  end

  describe '#validate_name' do
    it 'returns a string' do
      expect(game.validate_name).to eql('Please enter a correct name')
    end
  end

  describe '#assign_totem' do
    it 'returns a string' do
      expect(game_play.assign_totem(player)).to eql("#{player.name} your totem is #{player.totem}" + "\n\n")
    end
  end

  describe '#pick_not_valid' do
    it 'returns a string' do
      expect(game_play.pick_not_valid).to eql('Your pick is not valid, please make another pick')
    end
  end

  describe '#pick_number' do
    it 'returns a string' do
      expect(game_play.pick_number('Necmi')).to eql('Necmi, Please pick an available number between 1 to 9!')
    end
  end

  describe '#already_picked_message' do
    it 'returns a string' do
      expect(game.already_picked_message).to eql('This number is already pick, please make another pick.')
    end
  end

  describe '#declare_winner' do
    it 'returns a string' do
      expect(game.declare_winner('Necmi')).to eql('Congratulations Dude!!!!, Necmi, You are the winner')
    end
  end

  describe '#game_tie' do
    it 'returns a string' do
      expect(game.game_tie).to eql('The game is a tie!')
    end
  end
end
