require './spec_helper'

class Calculator

  def add(a, b)
    __
  end

  def subtract(a, b)
    __
  end

end

describe Calculator do

  let(:calculator) { Calculator.new }

  describe "add" do
    it "correctly adds two positive numbers" do
      calculator.add(1,2).should eq 3
    end

    it "correctly adds a positive number and zero" do
      calculator.add(0,4).should eq 4
    end

    it "correctly adds a positive number and a negative number" do
      calculator.add(-3,1).should eq -2
    end
  end

  describe "subtract" do
    it "correctly subtracts two positive numbers" do
      calculator.subtract(4,2).should eq 2
    end

    it "correctly subtracts a positive number and zero" do
      calculator.subtract(0,4).should eq -4
    end

    it "correctly subtracts a positive number and a negative number" do
      calculator.subtract(-3,1).should eq -4
    end
  end

end
