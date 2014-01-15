require './spec_helper'

class Kitten
  __
end

describe Kitten do

  let(:kitten) { Kitten.new }

  it "purrs when stroked" do
    kitten.stroke.should eq "purr"
  end

  it "hisses when scolded" do
    kitten.scold.should eq "hsssss!"
  end

  describe "feed" do
    it "returns true when fed ketchup on fish" do
      kitten.feed('ketchup on fish').should be_true
    end

    it "returns true when fed chicken ragu" do
      kitten.feed('chicken ragu').should be_true
    end

    it "returns true when fed a milk jug" do
      kitten.feed('milk jug').should be_true
    end

    it "returns false when fed a milk bowl" do
      kitten.feed('milk bowl').should be_false
    end

    it "returns false when fed fish and chips" do
      kitten.feed('fish and chips').should be_false
    end

    it "returns false when fed fish" do
      kitten.feed('fish').should be_false
    end

    it "returns false when fed ketchup" do
      kitten.feed('ketchup').should be_false
    end

    # Bonus points if you work out a pattern and build a general solution.
  end

  describe "is_hungry?" do
    it "is hungry at first" do
      kitten.should be_hungry
    end

    it "is not hungry after eating" do
      kitten.feed('chicken ragu')
      kitten.should_not be_hungry
    end

    it "is still hungry after refusing to eat" do
      kitten.feed('fish and chips')
      kitten.should be_hungry
    end

    it "is hungry again three seconds after eating" do
      kitten.feed('chicken ragu')
      sleep 3
      kitten.should be_hungry
    end

    # What happens to this test if we give the kitten a better metabolism
    # and it takes longer to get hungry?
    # Can you think of a way around that?
  end
end
