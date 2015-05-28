require './spec_helper'

describe "Arrays" do

  describe "creating arrays" do
    it "can be done with square brackets" do
      array = [1, 2, 3]
      expect(array).to eq ___
    end

    it "can be done by calling Array.new" do
      array = Array.new(3)
      expect(array).to eq ___
    end

    it "can be done using word array shorthand" do
      array = %w{ one two three }
      expect(array).to eq [ __ ]
    end
  end

  describe "accessing elements" do
    it "can be done with an index" do
      array = [:raise, :the, :roof]
      expect(array[__]).to eq :the
    end
    it "can be done with a negative index" do
      array = ['alpha', 'beta', 'gamma', 'delta']
      expect(array[__]).to eq 'gamma'
    end
    it "can be done with .first" do
      array = ["fish", "and", "chips"]
      expect(array.first).to eq __
    end
    it "can be done with .last" do
      array = [:ox, :box, :fox, :locks]
      expect(array.last).to eq __
    end
  end

  describe "changing arrays" do
    it "can be done with the shovel" do
      array = []
      array << "Hi"
      expect(array).to eq __
    end

    it "can be done with .push" do
      array = []
      array.push("Hi")
      expect(array).to eq __
    end

    it "can be done by index" do
      array = []
      array[1] = "oaf"
      array[5] = "oar"
      expect(array).to eq __
    end

    it "can insert things at a certain index" do
      array = [:a, :b, :c, :d]
      array.insert(3, :z)
      expect(array).to eq __
    end

    it "can be reversed" do
      array = __
      expect(array.reverse).to eq [2,5,10,9]
    end

    it "can be sorted" do
      array = [4, 2, 3, 10, 6]
      expect(array.sort).to eq __
    end

    it "can delete elements" do
      array = [1, 1, 2, 3]
      array.delete(1)
      expect(array).to eq __
    end

    it "can delete at a certain index" do
      array = %w{ fee fi fo fum }
      array.delete_at(3)
      expect(array).to eq __
    end

    it "can get rid of duplicated values" do
      array = %w{ hi ho hi ho off to work we go }
      array.uniq!
      expect(array).to eq __
    end

    it "can get rid of nil values" do
      array = []
      array[1]  = "Not nil"
      array[10] = "Not nil"
      expect(array.compact).to eq __
    end
  end
end
