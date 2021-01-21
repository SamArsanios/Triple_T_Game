class GameBoard
  attr_accessor :grid

  def initialize(grid = [1, 2, 3, 4, 5, 6, 7, 8, 9])
    @grid = grid
  end

  def replace_grid(chosen_number, totem)
    @grid[chosen_number - 1] = totem
    @grid
  end

  def fill_grid?
    @grid.all?(String)
  end

  def validate_pick?(player_pick)
    @grid.include?(player_pick)
  end

  def already_picked(player_pick)
    @grid.include?(player_pick)
  end

  def clear_board
    @grid = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

end
