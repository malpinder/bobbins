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
      expect(calculator.add(1,2)).to eq 3
    end

    it "correctly adds a positive number and zero" do
      expect(calculator.add(0,4)).to eq 4
    end

    it "correctly adds a positive number and a negative number" do
      expect(calculator.add(-3,1)).to eq -2
    end
  end

  describe "subtract" do
    it "correctly subtracts two positive numbers" do
      expect(calculator.subtract(4,2)).to eq 2
    end

    it "correctly subtracts a positive number and zero" do
      expect(calculator.subtract(0,4)).to eq -4
    end

    it "correctly subtracts a positive number and a negative number" do
      expect(calculator.subtract(-3,1)).to eq -4
    end
  end

end
