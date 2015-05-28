require './spec_helper'

describe "Changing strings" do

  it "can upcase a string" do
    string = "Hello"
    expect(string.upcase).to eq __
  end

  it "can downcase a string" do
    string = "HELLO"
    expect(string.downcase).to eq __
  end

  it "can change out single characters" do
    string = "Jelly"
    string[1] = __
    expect(string).to eq "Jolly"
  end

  describe "#split" do
    it "splits on spaces by default" do
      string = "Peanut Butter Jelly Time"
      words = string.split
      expect(words).to eq __
    end

    it "can split on other characters" do
      string = "one:two:three"
      words = string.split(":")
      expect(words).to eq __
    end

    it "can split on multiple characters" do
      string = "first, second, third"
      words = __
      expect(words).to eq ["first", "second", "third"]
    end

    it "can split on nothing" do
      string = "word"
      letters = string.split("")
      expect(letters).to eq __
    end

    it "cares about case" do
      string = "gGgGg"
      words = __
      expect(words).to eq ["g", "g", "g"]
    end

    it "might leave blank strings at the start, and in between, but not at the end" do
      string = "/left//right/"
      words = __
      expect(words).to eq ["", "left", "", "right"]
    end

    it "removes the thing it split on" do
      string = "she sells sea shells"
      words = __
      expect(words).to eq ["", "he ", "ell", " ", "ea ", "hell"]
    end

    it "doesn't change the original string" do
      string = "Original string"
      words = string.split
      expect(string).to eq __
    end
  end

  describe "#delete" do
    it "removes characters from a string" do
      string = "Hello"
      expect(string.delete("l")).to eq __
    end
    it "removes any characters that match" do
      string = "Betty Botter bought a bit of butter"
      expect(string.delete("batter")).to eq __
    end
  end

  describe "#gsub" do
    it "can substitute characters with other characters" do
      string = "potato"
      expect(string.gsub("pot", "tom")).to eq __
    end
    it "will substitute every occurance" do
      string = "Ho ho ho!"
      expect(string.gsub(__)).to eq "Hi hi hi!"
    end
    it "will only substitute an entire match" do
      string = "Betty Botter bought a bit of butter"
      expect(string.gsub("batter", "!")).to eq __
    end
  end

end
