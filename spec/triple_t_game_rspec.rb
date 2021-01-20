require_relative '../lib/game_play.rb'
require_relative '../lib/game.rb'
require_relative '../lib/gameboard.rb'
require_relative '../lib/player.rb'

describe GamePlay do
    let(:new_GamePlay) { Class.new { extend GamePlay } }
    describe "#player_names" do
        it "returns player number" do 
            expect(new_GamePlay.player_names(1)).to eql("Player1, Please enter your name")
        end
    end

    describe "#assign_totem" do
        it "returns assign totem" do 
            expect(new_GamePlay.assign_totem(1)).to eql("")
        end
    end

end

