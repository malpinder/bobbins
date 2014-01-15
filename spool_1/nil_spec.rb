require './spec_helper'

describe 'Nil' do

  describe "the nil object" do
    it "isn't written as a string, just the word" do
      nil_object = nil
      nil_object.should eq __
    end

    it "is falsy" do
      __.should be_false
    end
  end

  describe "nil?" do
    it "is true for nil itself" do
      __.should be_nil
    end

    it "is false for 0" do
      __.should_not be_nil
    end

    it "is false for false itself" do
      __.should_not be_nil
    end

    it "is false for strings" do
      __.should_not be_nil
    end

    it "is false even for empty strings" do
      __.should_not be_nil
    end

    it "is false for arrays" do
      __.should_not be_nil
    end

    it "is false for everything else you can think of" do
      __.should_not be_nil
    end
  end

end
