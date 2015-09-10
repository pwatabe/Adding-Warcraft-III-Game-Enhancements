require_relative 'spec_helper'

# Units start off alive but they die if their HP hits 0 or lower. 
# This is usually a result of receiving damage from combat.

#Still in progresss

describe Footman do

  before :each do
    @footman = Footman.new
  end

  it "has a method dead? and is false when HP is above 0" do
    expect(@footman.dead?).to be_false
  end

  it "returns true if there isn't enough health_points" do
    #Make unit believe that health_points is 0.
    #health_@points is overwritten by the "health_points" getter method.
    expect(@footman).to receive(:health_points).and_return(0)
    expect(@footman.dead?).to be_true
  end
end
