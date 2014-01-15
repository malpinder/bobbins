require './spec_helper'

describe "Changing strings" do

  it "can upcase a string" do
    string = "Hello"
    string.upcase.should eq __
  end

  it "can downcase a string" do
    string = "HELLO"
    string.downcase.should eq __
  end

  it "can change out single characters" do
    string = "Jelly"
    string[1] = __
    string.should eq "Jolly"
  end

  describe "#split" do
    it "splits on spaces by default" do
      string = "Peanut Butter Jelly Time"
      words = string.split
      words.should eq __
    end

    it "can split on other characters" do
      string = "one:two:three"
      words = string.split(":")
      words.should eq __
    end

    it "can split on multiple characters" do
      string = "first, second, third"
      words = __
      words.should eq ["first", "second", "third"]
    end

    it "can split on nothing" do
      string = "word"
      letters = string.split("")
      letters.should eq __
    end

    it "cares about case" do
      string = "gGgGg"
      words = __
      words.should eq ["g", "g", "g"]
    end

    it "might leave blank strings at the start, and in between, but not at the end" do
      string = "/left//right/"
      words = __
      words.should eq ["", "left", "", "right"]
    end

    it "removes the thing it split on" do
      string = "she sells sea shells"
      words = __
      words.should eq ["", "he ", "ell", " ", "ea ", "hell"]
    end

    it "doesn't change the original string" do
      string = "Original string"
      words = string.split
      string.should eq __
    end
  end

  describe "#delete" do
    it "removes characters from a string" do
      string = "Hello"
      string.delete("l").should eq __
    end
    it "removes any characters that match" do
      string = "Betty Botter bought a bit of butter"
      string.delete("batter").should eq __
    end
  end

  describe "#gsub" do
    it "can substitute characters with other characters" do
      string = "potato"
      string.gsub("pot", "tom").should eq __
    end
    it "will substitute every occurance" do
      string = "Ho ho ho!"
      string.gsub(__).should eq "Hi hi hi!"
    end
    it "will only substitute an entire match" do
      string = "Betty Botter bought a bit of butter"
      string.gsub("batter", "!").should eq __
    end
  end

end
