# Assign totems to players
class Players
  attr_accessor :name
  attr_reader :picks_array, :totem

  win_combinations = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze

  def initialize(name = '', picks_array = [], totem)
    @name = name
    @picks_array = picks_array
    @totem = totem
  end

  def winning?
    outcome = false
    win_combinations.each do |win_arr|
      outcome ||= win_arr.all? { |e| @picks_arr.include?(e) }
    end
    outcome
  end
end
