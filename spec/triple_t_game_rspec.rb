require_relative '../lib/game_play.rb'
require_relative '../lib/game.rb'
require_relative '../lib/gameboard.rb'
require_relative '../lib/player.rb'

describe GamePlay do
  let(:new_GamePlay) { Class.new { extend GamePlay } }
  describe '#player_names' do
    it 'returns player number' do 
      new_player = 2
      expect(new_GamePlay.player_names(new_player)).to eql("Player#{new_player}, Please enter your name")
      expect(new_GamePlay.player_names(new_player)).to_not eql('Player3, Please enter your name')
    end
  end
end

describe GameBoard do
  let(:new_GameBoard) { GameBoard.new }
  describe '#validate_pick?' do
    it 'checks for a valid pick in the board' do
      expect(new_GameBoard.validate_pick?(2)).to eql(true)
      expect(new_GameBoard.validate_pick?(10)).to_not eql(true)
    end
  end

  describe '#already_picked' do
    it 'checks for a valid pick in the board' do
      expect(new_GameBoard.already_picked(2)).to eql(true)
      expect(new_GameBoard.already_picked(10)).to_not eql(true)
    end
  end

  describe '#replace_grid' do
    it 'replaces a number in grid with the totem value' do
      expect(new_GameBoard.replace_grid(2, 'X')).to eql([1, 'X', 3, 4, 5, 6, 7, 8, 9])
      expect(new_GameBoard.replace_grid(2, 'O')).to_not eql([1, 'X', 3, 4, 5, 6, 7, 8, 9])
    end
  end
end

describe Players do 
  let(:start) { Players.new('x', name = '', picks_arr = [1, 2, 3]) }
  let(:start1) { Players.new('x', name = '', picks_arr = [1, 2, 1]) } 
  describe '#winning?' do 
    it 'returns a boolean' do 
      expect(start.winning?).to eql(true)
      expect(start1.winning?).to_not eql(true)
    end 
  end 
end 
