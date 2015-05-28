require './spec_helper'

# A describe block groups together tests that are alike in some way.
# It can help provide context for people reading the spec file.
# All the tests in it still run independently.

describe "Getting started with RSpec" do

  # An 'it' block states what it will test, then runs some code.
  # In these tests, this takes the form of taking a thing, and saying it
  # should be a certain way.

  # Replace the __ with something that makes the test pass.

  it "can check a thing is equal to another" do
    number = __
    expect(number).to eq 1
  end

  # Each 'it' block runs as a separate test.
  # Something you set in the first test will not continue over into the second.

  it "can check different things" do
    number = __
    expect(number).to eq 2
  end

  # You can test that a thing should be a certain way.
  # You can also test that a thing should not be a certain way.

  it "can also check if things are not a certain way" do
    expect(__).not_to eq 10
  end

  # You can also check one expression is equal to another.
  # You may need to use round brackets to make things clearer.

  it "can check if things equal an expression" do
    expect(__).to eq 1 + 1
  end

  # You can also test the behaviour of a thing rather than the thing itself.

  it "can check if things respond the right way to methods" do
    string = __
    expect(string.reverse).to eq "gnirts desrever"
  end

  # And you can check the quality of an object.
  # There are many methods that end in ? such as nil? or true?
  # RSpec lets you check these quickly using be_ helpers.

  it "can check things are not nil" do
    object = __

    expect(object.nil?).to eq false
    expect(object).not_to be_nil
  end

  # You can nest describe blocks inside each other.
  # The sentance should carry on from the first describe.

  describe "within a deeper context" do

    # 'let' blocks will give you a variable you can use in the tests.
    # Any test in the same describe as the 'let' will have access to it.
    # In this case, it's like writing a_number = 5 at the start of each test.

    let(:a_number) { 1 }

    it "has access to 'let' blocks" do
      expect(a_number).to eq __
    end

    # Sometimes you will have to edit the test.
    # Sometimes you will have to edit a method the test is calling.
    # Sometimes you will have to write out the methods from scratch.

    def multiply_by_five(number)
      __
    end

    it "multiplies by five" do
      expect(multiply_by_five(4)).to eq 20

      expect(multiply_by_five(5)).to eq 25
    end

  end
end
