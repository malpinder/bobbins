require './spec_helper'

describe 'Nil' do

  describe "the nil object" do
    it "isn't written as a string, just the word" do
      nil_object = nil
      expect(nil_object).to eq __
    end

    it "is falsy" do
      expect(__).to be_false
    end
  end

  describe "nil?" do
    it "is true for nil itself" do
      expect(__).to be_nil
    end

    it "is false for 0" do
      expect(__).not_to be_nil
    end

    it "is false for false itself" do
      expect(__).not_to be_nil
    end

    it "is false for strings" do
      expect(__).not_to be_nil
    end

    it "is false even for empty strings" do
      expect(__).not_to be_nil
    end

    it "is false for arrays" do
      expect(__).not_to be_nil
    end

    it "is false for everything else you can think of" do
      expect(__).not_to be_nil
    end
  end

end
