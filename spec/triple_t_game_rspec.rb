require_relative '../lib/game_play.rb'
require_relative '../lib/game.rb'
require_relative '../lib/gameboard.rb'
require_relative '../lib/player.rb'

describe GamePlay do
    let(:new_GamePlay) { Class.new { extend GamePlay } }
    describe "#player_names" do
        it "returns player number" do 
            new_player = 2
            expect(new_GamePlay.player_names(new_player)).to eql("Player#{new_player}, Please enter your name")
        end
    end
end

