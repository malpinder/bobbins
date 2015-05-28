require './spec_helper'

describe "Regular Expressions (Regex or Regexp)" do

  let(:phrase) { "It was a bright cold day in April, and the clocks were striking thirteen." }

  it "matches using match" do
    expect(phrase).to __ /bright/
  end

  it "matches using .match" do
    expect(/April/.__(phrase)).to be_truthy
  end

  it "can match any character" do
    expect(__).to match /a/
  end

  it "can match a combination of characters" do
    expect(__).to match /abc/
  end

  it "matches an optional character with ?" do
    expect(phrase).to match /__?ing/
  end

  it "matches one or more of a character with +" do
    expect(phrase).to match /t__+n/
  end

  it "matches zero or more of a character with *" do
    expect(phrase).to match /was__*/
  end

  it "matches any single non-newline character with ." do
    expect(phrase).to match /__.__/
  end

  it "can match a full-stop character with \." do
    expect(phrase).to match /teen__/
  end

  it "matches the left-most match first" do
    expect(phrase match /th*/).to eq __
  end

  it "can match a single character from a set" do
    expect(phrase).to match /[zm__]n/
  end

  it "can match a single character from a range" do
    expect("striking 13").to match /[__-__]/
  end

  it "can match any digit with \d" do
    expect("striking 13").to match /__/
  end

  it "can match any whitespace with \s" do
    expect(phrase).to match /cold__day/
  end

  it "can match word characters with \w" do
    expect(phrase).to match /__,/
  end

  it "can match the start of the string with \A" do
    expect(phrase).to match /__I/
  end

  it "can match the end of the string with \z" do
    expect(phrase).to match /thirteen\.__/
  end

  it "can check for something that is not using [^chars]" do
    expect(phrase).to match /[^a-rt-z]__/
  end
  # What happens if you use a caret (^) outside square brackets?

  it "can check for one thing or another with |" do
    expect(phrase).to match /March|__|May/
  end
  # What's the difference between using alternation (|) and square brackets([])?
end
