require_relative 'spec_helper'

# In most strategy games, like Warcraft III, buildings can also be attacked by units. 
# Since a barracks is a building, it has substantial more HP (500)
# To make matters worse, a Footman does only HALF of its AP as damage to a Barracks. 
# This is because they are quite ineffective against buildings.

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "has and knows its HP (health points)" do
    expect(@barracks.health_points).to eq(500)
  end
end

describe Footman do

  before :each do
    @footman = Footman.new
  end

  describe "#attack!" do
    it "should do deal HALF of (AP) damage to Barracks" do
      enemy_barrack = Barracks.new
      @footman.attack!(enemy_barrack)
      expect(enemy_barrack.health_points).to eq(495)      
    end
  end
end
