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
    it "should deal double the damage against barracks and not be able to attack units" do
      enemy1 = Barracks.new
      @siegeengine.attack!(enemy1)
      expect(enemy1.health_points).to eq(400)
    end
  end

  describe "#attack!" do
    it "should not be able to attack other units" do
      enemy = Footman.new
      @siegeengine.attack!(enemy)
      expect(@siegeengine.attack!(enemy)).to be_falsey
    end
  end
    



  
end