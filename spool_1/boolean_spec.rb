require './spec_helper'

describe "Booleans" do

  describe "the true object" do
    it "isn't written as a string, just the word" do
      true_object = true
      true_object.should eq __
    end
  end

  describe "the false object" do
    it "isn't written as a string, just the word" do
      false_object = false
      false_object.should eq __
    end
  end

  describe "falsiness" do
    it "is false for false" do
      __.should be_false
    end
    it "is false for nil" do
      __.should be_false
    end
  end

  describe "truthiness" do
    it "is true for true object" do
      __.should be_true
    end
    it "is true for numbers" do
      __.should be_true
    end
    it "is true for strings" do
      __.should be_true
    end
    it "is true even for empty strings" do
      __.should be_true
    end
    it "is true for a hash" do
      __.should be_true
    end
    it "is true for an array" do
      __.should be_true
    end
    it "is true for pretty much anything else" do
      __.should be_true
    end
  end
end

describe "Boolean expressions" do
  describe "&&" do
    it "returns what is on the left if it is false" do
      result = false && "A prize!"
      result.should eq __
    end

    it "returns what is on the right if what is on the left is true" do
      result = true && "A prize!"
      result.should eq __
    end

    it "can use expressions" do
      result = 3 < 4 && 4 < 5
      result.should eq __
    end
  end

  describe "||" do
    it "returns what is on the left if it is true" do
      result = true || "A prize!"
      result.should eq __
    end

    it "returns what is on the right if what is on the left is false" do
      result = false || "A prize!"
      result.should eq __
    end

    it "can use expressions" do
      result = 3 > 4 || 3 < 4
      result.should eq __
    end
  end

  describe "combining expressions" do
    it "can stack up lots of &&" do
      result = :a && :b && :c
      result.should eq __
    end

    it "can stack up lots of ||" do
      result = :a || :b || :c
      result.should eq __
    end

    it "works things out right-to-left" do
      result = :a || :b && :c || :d
      result.should eq __
    end

    it "does brackets first" do
      result = (:a || :b) && (:c || :d)
      result.should eq __
    end
  end
end
