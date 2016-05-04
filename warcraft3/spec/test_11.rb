require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
    @footman = Footman.new
  end

  it "has 500 HP" do
    expect(@barracks.health_points).to eq(500)
  end

  describe "#damage" do
    it "should take only half the damage as usual if a footman attacks it" do
      @barracks.damage(10)
      expect(@barracks.health_points).to eq(495)
    end
  end

end