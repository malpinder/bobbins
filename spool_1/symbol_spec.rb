require './spec_helper'

describe "Symbols" do

  it "can be made with just a colon" do
    symbol = __
    expect(symbol).to eq :hello
  end

  it "can be made with a colon and quotes" do
    symbol = __
    expect(symbol).to eq :hello
  end

  it "can be made by .to_sym" do
    symbol = __
    expect(symbol).to eq :hello
  end

  it "usually has underscores and all lower case letters" do
    symbol = :a_symbol
    expect(symbol).to eq __
  end

  it "can have capitals, puntuation and spaces (though this is uncommon)" do
    symbol = :"Hello, world"
    expect(symbol).to eq __
  end

  it "can be made from interpolated strings" do
    animal = "cats"
    symbol = :"#{animal}_and_dogs"
    expect(symbol).to eq __
  end

  # Symbols don't seem to do very much. Why do you think we use them?
  # In what situation might you use symbols rather than strings?
  # Why might you use strings rather than symbols?

end
