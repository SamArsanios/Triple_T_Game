# Assign totems to players
class Players
  WINNERS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze

  attr_accessor :name
  attr_reader :picks_arr, :totem

  def initialize(name = '', picks_arr = [], totem)
    @name = name
    @picks_arr = picks_arr
    @totem = totem
  end

  def winning?
    outcome = false
    WINNERS.each do |win_arr|
      outcome ||= win_arr.all? { |e| @picks_arr.include?(e) }
    end
    outcome
  end
end
