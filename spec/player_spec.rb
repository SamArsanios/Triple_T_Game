require './lib/player.rb'

describe Players do
  let(:start) { Players.new('x', name = '', picks_arr = []) }
  describe '#winning?' do
    it 'returns a boolean' do
      expect(start.winning?).to eql(false)
    end
  end
end
