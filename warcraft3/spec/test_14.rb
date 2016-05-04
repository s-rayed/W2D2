require_relative 'spec_helper'

describe Barracks do 

  before :each do
    @barracks = Barracks.new
  end

  it "has 500 lumber to start" do
    expect(@barracks.lumber).to eq(500)
  end


  
end