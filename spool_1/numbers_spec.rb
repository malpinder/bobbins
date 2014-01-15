require './spec_helper'

describe "Numbers" do

  describe "An Integer" do
    it "looks like a standard number" do
      integer = 12
      integer.should eq __
    end
    it "can be created from a string using .to_i" do
      string = "12"
      integer = string.to_i
      integer.should eq __
    end
    it "is always a whole number" do
      string = "12.45"
      integer = string.to_i
      integer.should eq __
    end
    it "can be a negative number" do
      integer = __
      integer.should < 0
    end
  end

  describe "A Float" do
    it "is a number with a decimal point" do
      float = 12.45
      float.should eq __
    end
    it "can be smaller than 1" do
      float = __
      float.should < 1
    end
    it "can be a float which represents a whole number" do
      float = __
      float.should eq 5
    end
    it "can be created from a string using .to_f" do
      string = "12.45"
      float = string.to_f
      float.should eq __
    end
  end

  # Why are they called "Integers" and "Floats" rather than
  # "whole" or "decimal" numbers?
end
