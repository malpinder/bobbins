require './spec_helper'

describe "Hashes" do

  describe "building hashes" do
    it "can be done with curly braces and hashrockets" do
      hash = __
      hash.should be_kind_of Hash
    end

    it "can be done by calling Hash.new" do
      hash = __
      hash.should be_kind_of Hash
    end

    it "can be done using symbol-key shorthand" do
      hash = __
      hash.should be_kind_of Hash
    end

    it "cannot have the same key twice" do
      hash = { foo: "bar", foo: "maz" }
      hash.should eq __
    end
  end

  describe "accessing hashes" do
    it "can be done with square brackets and a key" do
      hash = { one: "uno", two: "dos" }
      hash[:one].should eq __
    end

    it "will return nil for keys that don't exist" do
      hash = { one: "uno", two: "dos" }
      hash["doesn't exist"].should eq __
    end

    it "will only match the key if it is equal (using ==)" do
      hash = { one: "uno", two: "dos" }
      hash["one"].should eq __
    end

    it "can be done using .fetch" do
      hash = { one: "uno", two: "dos" }
      hash.fetch(:one).should eq __
    end

    it "can provide a default using .fetch" do
      hash = { one: "uno", two: "dos" }
      hash.fetch("doesn't exist", 'Default value').should eq __
    end

    it "can get all the keys in a hash" do
      hash = { one: "uno", two: "dos" }
      hash.keys.should eq __
    end

    it "can get all the values in a hash" do
      hash = { one: "uno", two: "dos" }
      hash.values.should eq __
    end
  end

  describe "modifying hashes" do
    it "can be done by setting a key" do
      hash = { one: "uno" }
      hash[:one] = __

      expected = { one: "en" }
      hash.should eq expected
    end

    it "can be done by setting a key even if the key doesn't exist" do
      hash = {}
      hash[:one] = __

      expected = { one: "en" }
      hash.should eq expected
    end

    it "can be done by merging a hash with another" do
      hash = {one: "uno"}
      hash.merge!(two: "dos")

      expected = __
      hash.should eq expected
    end

    it "will merge keys from the new hash over the first" do
      hash = {one: "uno"}
      hash.merge!(__)

      expected = { one: "en" }
      hash.should eq expected
    end

    # Why do these tests use an 'expected' variable instead of writing the
    # hash inline after eq?

    it "can be merged non-destructively" do
      hash = {one: "uno"}
      hash.merge(one: "en")

      hash[:one].should eq __
    end

  end

end
