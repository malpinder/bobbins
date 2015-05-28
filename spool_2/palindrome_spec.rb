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
      expect(checker).to be_valid
    end

    it "is valid for a palindromic sentence" do
      checker = PalindromeChecker.new("live not on evil")
      expect(checker).to be_valid
    end

    it "is valid regardless of punctuation" do
      checker = PalindromeChecker.new("a man, a plan, a canal - panama!")
      expect(checker).to be_valid
    end

    it "is valid regardless of capitalization" do
      checker = PalindromeChecker.new("Madam, I'm Adam")
      expect(checker).to be_valid
    end
  end

  describe "invalid strings" do
    it "is invalid for non-palindromic words" do
      checker = PalindromeChecker.new("horse")
      expect(checker).not_to be_valid
    end

    it "is invalid for non-palindromic sentences" do
      checker = PalindromeChecker.new("The rain in Spain falls mainly on the plain")
      expect(checker).not_to be_valid
    end
  end
end
