require_relative '../lib/game_play.rb'
require_relative '../lib/game.rb'
require_relative '../lib/gameboard.rb'
require_relative '../lib/player.rb'

describe GamePlay do
  let(:new_GamePlay) { Class.new { extend GamePlay } }
  describe '#player_names' do
    it 'returns the number of the player' do
      new_player = 2
      expect(new_GamePlay.player_names(new_player)).to eql("Player#{new_player}, Please enter your name")
    end

    it 'returns false if the player number is invalid' do
      new_player = 2
      expect(new_GamePlay.player_names(new_player)).to_not eql('Player3, Please enter your name')
    end
  end
end

describe GameBoard do
  let(:new_GameBoard) { GameBoard.new }
  describe '#validate_pick?' do
    it 'checks for a valid pick in the board' do
      expect(new_GameBoard.validate_pick?(2)).to eql(true)
    end

    it 'checks for an invalid pick in the board' do
      expect(new_GameBoard.validate_pick?(10)).to_not eql(true)
    end
  end

  describe '#already_picked' do
    it 'checks for already taken pick in the board' do
      expect(new_GameBoard.already_picked(2)).to eql(true)
    end

    it 'checks for invalid pick in the board' do
      expect(new_GameBoard.already_picked(10)).to_not eql(true)
    end
  end

  describe '#replace_grid' do
    it 'returns true if the value is X' do
      expect(new_GameBoard.replace_grid(2, 'X')).to eql([1, 'X', 3, 4, 5, 6, 7, 8, 9])
    end

    it 'returns true if the value is O' do
      expect(new_GameBoard.replace_grid(2, 'O')).to eql([1, 'O', 3, 4, 5, 6, 7, 8, 9])
    end

    it 'returns true if choice is invalid' do
      expect(new_GameBoard.replace_grid(11, 'O')).to_not eql([1, 'O', 3, 4, 5, 6, 7, 8, 9])
    end
  end

  describe "#fill_grid?" do
  it "checks for string" do
   expect(new_GameBoard.fill_grid?).to eql(false) 
  end

  it "return true for no string value" do
    expect(new_GameBoard.fill_grid?).to_not eql(true) 
   end

end
end

describe Players do
  let(:start) { Players.new('x', '', [1, 2, 3]) }
  let(:start1) { Players.new('x', '', [1, 2, 1]) }
  describe '#winning?' do
    it 'returns a boolean' do
      expect(start.winning?).to eql(true)
      expect(start1.winning?).to_not eql(true)
    end
  end
end


