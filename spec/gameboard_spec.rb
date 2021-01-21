require_relative '../lib/gameboard.rb'

describe GameBoard do
  describe '#replace_grid' do
    it 'returns grid' do
      board = GameBoard.new
      expect(board.replace_grid(5, :o)).to eql([1, 2, 3, 4, :o, 6, 7, 8, 9])
    end
  end

  describe '#fill_grid?' do
    it 'returns a boolean' do
      board = GameBoard.new
      expect(board.fill_grid?).to eql(false)
    end
  end

  describe '#validate_pick?' do
    it 'returns a boolean' do
      board = GameBoard.new
      expect(board.validate_pick?(1)).to eql(true)
    end
  end

  describe '#already_picked' do
    it 'returns a boolean' do
      board = GameBoard.new
      expect(board.already_picked(1)).to eql(true)
    end
  end

  describe '#clear_board' do
    it 'returns a clean board' do
      board = GameBoard.new
      expect(board.clear_board).to eql([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end
end
