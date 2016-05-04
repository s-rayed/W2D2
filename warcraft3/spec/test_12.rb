require_relative 'spec_helper'

describe Unit do 

  before :each do
    @unit = Unit.new(10, 10)
    @unit2 = Unit.new(10, 10)
  end

  describe "#dead?" do
    it "should be dead if HP hit 0 or lower" do
      @unit2.attack!(@unit)
      expect(@unit.dead?).to be_truthy
    end
  end


  
end