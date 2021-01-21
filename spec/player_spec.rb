require_relative '../lib/player.rb'

describe Players do
  let(:start) { Players.new('x') }
  describe '#winning?' do
    it 'returns a boolean' do
      expect(start.winning?).to eql(false)
    end

    it 'returns a boolean' do
      expect(start.winning?).not_to eql(true)
    end
  end
end
