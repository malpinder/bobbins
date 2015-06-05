require './spec_helper'

describe "Booleans" do

  describe "the true object" do
    it "isn't written as a string, just the word" do
      true_object = true
      expect(true_object).to eq __
    end
  end

  describe "the false object" do
    it "isn't written as a string, just the word" do
      false_object = false
      expect(false_object).to eq __
    end
  end

  describe "falsiness" do
    it "is falsey for false" do
      expect(__).to be_falsey
    end
    it "is falsey for nil" do
      expect(__).to be_falsey
    end
  end

  describe "truthiness" do
    it "is truthy for true object" do
      expect(__).to be_truthy
    end
    it "is truthy for numbers" do
      expect(__).to be_truthy
    end
    it "is truthy for strings" do
      expect(__).to be_truthy
    end
    it "is truthy even for empty strings" do
      expect(__).to be_truthy
    end
    it "is truthy for a hash" do
      expect(__).to be_truthy
    end
    it "is truthy for an array" do
      expect(__).to be_truthy
    end
    it "is truthy for pretty much anything else" do
      expect(__).to be_truthy
    end
  end
end

describe "Boolean expressions" do
  describe "&&" do
    it "returns what is on the left if it is falsey" do
      result = false && "A prize!"
      expect(result).to eq __
    end

    it "returns what is on the right if what is on the left is truthy" do
      result = true && "A prize!"
      expect(result).to eq __
    end

    it "can use expressions" do
      result = 3 < 4 && 4 < 5
      expect(result).to eq __
    end
  end

  describe "||" do
    it "returns what is on the left if it is truthy" do
      result = true || "A prize!"
      expect(result).to eq __
    end

    it "returns what is on the right if what is on the left is falsey" do
      result = false || "A prize!"
      expect(result).to eq __
    end

    it "can use expressions" do
      result = 3 > 4 || 3 < 4
      expect(result).to eq __
    end
  end

  describe "combining expressions" do
    it "can stack up lots of &&" do
      result = :a && :b && :c
      expect(result).to eq __
    end

    it "can stack up lots of ||" do
      result = :a || :b || :c
      expect(result).to eq __
    end

    it "works things out right-to-left" do
      result = :a || :b && :c || :d
      expect(result).to eq __
    end

    it "does brackets first" do
      result = (:a || :b) && (:c || :d)
      expect(result).to eq __
    end
  end
end
