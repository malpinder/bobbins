require './spec_helper'

class Kitten
  # __
end

describe Kitten do

  let(:kitten) { Kitten.new }

  it "purrs when stroked" do
    expect(kitten.stroke).to eq "purr"
  end

  it "hisses when scolded" do
    expect(kitten.scold).to eq "hsssss!"
  end

  describe "feed" do
    it "returns true when fed ketchup on fish" do
      expect(kitten.feed('ketchup on fish')).to eq true
    end

    it "returns true when fed chicken ragu" do
      expect(kitten.feed('chicken ragu')).to eq true
    end

    it "returns true when fed a milk jug" do
      expect(kitten.feed('milk jug')).to eq true
    end

    it "returns false when fed a milk bowl" do
      expect(kitten.feed('milk bowl')).to eq false
    end

    it "returns false when fed fish and chips" do
      expect(kitten.feed('fish and chips')).to eq false
    end

    it "returns false when fed fish" do
      expect(kitten.feed('fish')).to eq false
    end

    it "returns false when fed ketchup" do
      expect(kitten.feed('ketchup')).to eq false
    end

    # Bonus points if you work out a pattern and build a general solution.
  end

  describe "is_hungry?" do
    it "is hungry at first" do
      expect(kitten).to be_hungry
    end

    it "is not hungry after eating" do
      kitten.feed('chicken ragu')
      kitten.should_not be_hungry
    end

    it "is still hungry after refusing to eat" do
      kitten.feed('fish and chips')
      expect(kitten).to be_hungry
    end

    it "is hungry again three seconds after eating" do
      kitten.feed('chicken ragu')
      sleep 3
      expect(kitten).to be_hungry
    end

    # What happens to this test if we give the kitten a better metabolism
    # and it takes longer to get hungry?
    # Can you think of a way around that?
  end
end
