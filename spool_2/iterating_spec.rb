require './spec_helper'

describe "Iterating" do

  describe "doing something a number of times" do

    it "repeats what is in the block the number of times" do
      string = "Echo!"

      __.times do
        string = string + " Echo!"
      end

      string.should eq "Echo! Echo! Echo!"
    end

    it "can be done with a do... end" do
      x = 1

      5.times do
        x += 1
      end

      x.should eq __
    end

    it "can be done with curly braces" do
      x = 1
      5.times { x += 1 }
      x.should eq __
    end

    it "can use an argument in the block (which in this case is a number)" do
      string = "I can count: "
      5.times do |number|
        string << __
      end
      string.should eq "I can count: 1 2 3 4 5"
    end

    it "returns the number of times it did it" do
      x = 1
      result = 5.times { x += 1 }
      result.should eq __
    end

    # This isn't the first time you've encountered blocks.
    # Where else have you seen blocks written?
    # Remember, blocks aren't only used for loops!
  end

  describe "iterating over each element in an array" do
    let(:array) { ["goats", "sheep", "cows", "hens"] }

    describe "with .each" do

      it "passes each element in turn to the block" do
        what_got_passed_to_the_block = []
        array.each do |animal|
          what_got_passed_to_the_block.push animal
        end
        what_got_passed_to_the_block.should eq __
      end

      it "returns the array when it is done" do
        result = array.each { |animal| animal.reverse }
        result.should eq __
      end

    end

    describe "with .each_with_index" do

      it "passes each element and it's index to the block" do
        farmyard = "The farmyard contains: "
        array.each_with_index do |animal, i|
          farmyard << __
        end
        farmyard.should eq "The farmyard contains: 0 goats 1 sheep 2 cows 3 hens"
      end

    end
  end

  describe "iterating over each element in a range" do
    it "works just like iterating over an array of numbers" do
      what_got_passed_to_the_block = []
      (5..10).each do |number|
        what_got_passed_to_the_block << number
      end
      what_got_passed_to_the_block.should eq __
    end
  end

  describe "iterating over each element in a hash" do
    let(:hash) { { one: "uno", two: "dos" } }

    describe "with .each_pair" do

      it "passes both the key and the value to the block" do
        what_got_passed_to_the_block = []
        hash.each_pair do |key, value|
          what_got_passed_to_the_block << key
          what_got_passed_to_the_block << value
        end
        what_got_passed_to_the_block.should eq __
      end

      it "returns the hash when it is done" do
        result = hash.each_pair { |key, value| value.reverse }
        result.should eq __
      end

    end

    describe "with .each" do

      it "passes the key & value to the block as an array" do
        keys_and_values = ""
        hash.each do |array|
          keys_and_values += "#{array} "
        end
        keys_and_values.should eq __
      end

      it "can separate keys and values by using brackets" do
        keys_and_values = ""
        hash.each do |(key, value)|
          keys_and_values += "Key: #{key}, Value: #{value} "
        end
        keys_and_values.should eq __
      end

    end

    describe "with .each_with_index" do

      it "passes the key & value to the block, as an array, and the index" do
        new_hash = {}
        hash.each_with_index do |(key, value), index|
          new_hash[index] = "#{key} #{value}"
        end
        new_hash.should eq __
      end

    end
  end

end
