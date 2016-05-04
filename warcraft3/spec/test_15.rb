require_relative 'spec_helper'

describe SiegeEngine do

  before :each do
    @siegeengine = SiegeEngine.new
  end

    it "starts off with 50 attack power" do
    expect(@siegeengine.attack_power).to eq(50)
  end

  it "starts off with 400 health points" do
    expect(@siegeengine.health_points).to eq(400)
  end


  describe "#attack!" do
    it "should deal double the damage against barracks and can't attack units" do
      enemy = Barracks.new
      enemy2 = Unit.new(10, 10)
      enemy3 = SiegeEngine.new
      expect(enemy).to receive(:damage).with(100)
      @siegeengine.attack!(enemy)
      expect(enemy2).to receive(:damage).with(0)
      @siegeengine.attack!(enemy2)
      expect(enemy3).to receive(:damage).with(50)
      @siegeengine.attack!(enemy3)
    end
  end
    



  
end