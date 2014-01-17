require './spec_helper'

class PalindromeChecker
  def initialize(string)
    @string = string
  end

  def valid?
    __
  end
end

describe PalindromeChecker do

  describe "valid strings" do
    it "is valid for a palindromic word" do
      checker = PalindromeChecker.new("level")
      checker.should be_valid
    end

    it "is valid for a palindromic sentence" do
      checker = PalindromeChecker.new("live not on evil")
      checker.should be_valid
    end

    it "is valid regardless of punctuation" do
      checker = PalindromeChecker.new("a man, a plan, a canal - panama!")
      checker.should be_valid
    end

    it "is valid regardless of capitalization" do
      checker = PalindromeChecker.new("Madam, I'm Adam")
      checker.should be_valid
    end
  end

  describe "invalid strings" do
    it "is invalid for non-palindromic words" do
      checker = PalindromeChecker.new("horse")
      checker.should_not be_valid
    end

    it "is invalid for non-palindromic sentences" do
      checker = PalindromeChecker.new("The rain in Spain falls mainly on the plain")
      checker.should_not be_valid
    end
  end
end
