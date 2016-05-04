require_relative 'spec_helper'

describe Unit do 

  before :each do
    @unit = Unit.new(10, 10)
    @unit2 = Unit.new(10, 10)
  end

  describe "#attack!" do
    it "should not be able to attack if it is dead" do
      @unit2.attack!(@unit)
      expect(@unit.attack!(@unit2)).to be_falsy
    end
  end

end

