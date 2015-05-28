require './spec_helper'

describe "Building strings" do

  it "can be done with double quotes" do
    string = __
    expect(string).to eq "Hello, world"
  end
  it "can be done with single quotes" do
    string = __
    expect(string).to eq 'Hello, world'
  end
  it "can be done over multiple lines" do
    string = "Hello,
world!"
    expect(string).to eq __
  end

  describe "creating strings from other things" do
    it "works with numbers" do
      number = __
      expect(number.to_s).to eq "5"
    end
    it "works with symbols" do
      symbol = __
      expect(symbol.to_s).to eq "bears"
    end
    it "works with arrays" do
      array = __
      expect(array.to_s).to eq "[1, 2, 3]"
    end
    it "works with hashes" do
      hash = __
      expect(hash.to_s).to eq '{"grass"=>"cow"}'
    end
  end

  describe "interpolation" do
    it "interpolates in double quoted strings" do
      name = "Kim"
      string = "Hello, #{name}"
      expect(string).to eq __
    end

    it "does not interpolate in single quoted strings" do
      name = "Kim"
      string = 'Hello, #{name}'
      expect(string).to eq __
    end

    it "interpolates numbers" do
      string = "One: #{__}"
      expect(string).to eq "One: 1"
    end

    it "interpolates nil" do
      string = "#{nil}"
      expect(string).to eq __
    end

    it "interpolates lots of things" do
      string = "#{ [ __ ] }"
      expect(string).to eq "[1, 2, 3]"
    end
  end

  describe "with +" do
    it "can be done with +" do
      string = "Hello, " + "world"
      expect(string).to eq __
    end
    it "can be done with lots of +s" do
      string = "Hello," + " " + "world"
      expect(string).to eq __
    end
    it "does not like it if you try to + things that aren't strings" do
      expect {
        string = "One: " + __
      }.to raise_error(TypeError)
    end
    it "is ok if you call .to_s on a thing before you + it" do
      string = "One: " + __.to_s
      expect(string).to eq "One: 1"
    end
    it "does not alter the original string!" do
      string = "Original and best"
      string + " and oldest"
      expect(string).to eq __
    end
  end

  describe "with the shovel" do
    it "puts things on the end of the string" do
      string = "Hello"
      string << __
      expect(string).to eq "Hello, world"
    end

    it "does strange things if you use numbers" do
      string = "Hello"
      string << 33
      expect(string).to eq __

      # See if you can find out what is going on here.
      # Why do you think this would happen?
    end
  end

  describe "with join" do
    it "joins things together" do
      words = ["One", "two", "three"]
      string = words.join
      expect(string).to eq __
    end

    it "can join with a string in between each" do
      words = ["Huey", "Louie", "Doug"]
      string = words.join(" ")
      expect(string).to eq __
    end

    it "does not put the joining string at the end" do
      words = ["sausage", "chips", "gravy"]
      string = __
      expect(string).to eq "sausage, and chips, and gravy"
    end

    it "leaves the original strings unmodified" do
      duck = "duck"
      goose = "goose"
      [duck, duck, goose].join(", ")
      expect(duck).to eq __
    end
  end
end
