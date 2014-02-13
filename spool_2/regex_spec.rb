require './spec_helper'

describe "Regular Expressions (Regex or Regexp)" do

  let(:phrase) { "It was a bright cold day in April, and the clocks were striking thirteen." }

  it "matches using =~" do
    phrase.should __ /bright/
  end
  it "matches using .match" do
    /April/.__(phrase).should be_true
  end

  # What's the difference between using =~ and .match?

  it "can match any character" do
    __.should =~ /a/
  end
  it "can match a combination of characters" do
    __.should =~ /abc/
  end

  it "matches an optional character with ?" do
    phrase.should =~ /__?ing/
  end
  it "matches one or more of a character with +" do
    phrase.should =~ /t__+n/
  end
  it "matches zero or more of a character with *" do
    phrase.should =~ /was__*/
  end
  it "matches any single non-newline character with ." do
    phrase.should =~ /__.__/
  end

  it "can match a full-stop character with \." do
    phrase.should =~ /teen__/
  end

  it "matches the left-most match first" do
    (phrase =~ /th*/).should eq __
  end

  it "can match a single character from a set" do
    phrase.should =~ /[zm__]n/
  end
  it "can match a single character from a range" do
    "striking 13".should =~ /[__-__]/
  end

  it "can match any digit with \d" do
    "striking 13".should =~ /__/
  end
  it "can match any whitespace with \s" do
    phrase.should =~ /cold__day/
  end
  it "can match word characters with \w" do
    phrase.should =~ /__,/
  end
  it "can match the start of the string with \A" do
    phrase.should =~ /__I/
  end
  it "can match the end of the string with \z" do
    phrase.should =~ /thirteen\.__/
  end

  it "can check for something that is not using [^chars]" do
    phrase.should =~ /[^a-rt-z]__triking/
  end
  # What happens if you use a caret (^) outside square brackets?

  it "can check for one thing or another with |" do
    phrase.should =~ /March|__|May/
  end
  # What's the difference between using alternation (|) and square brackets([])?
end
