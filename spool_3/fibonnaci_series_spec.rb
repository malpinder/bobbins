require './spec_helper'
require 'prime'

def generate_fibonnaci(number)
  series = [0, 1]
  __
end

describe "generate_fibonnaci" do
  it "returns the first 2 fibonnaci numbers when asked for 2 numbers" do
    expect(generate_fibonnaci(2)).to eq [0, 1]
  end

  it "returns the first 5 fibonnaci numbers when asked for 5 numbers" do
    expect(generate_fibonnaci(5)).to eq [0, 1, 1, 2, 3]
  end

  it "returns the first 10 fibonnaci numbers when asked for 10 numbers" do
    expect(generate_fibonnaci(10)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
  end
end

def prime_fibonnaci(number)
  series = generate_fibonnaci(number)
  __
end

describe "prime_fibonnaci" do
  it "returns no primes from the first 2 fibonacci numbers" do
    # Remember, 0 and 1 aren't prime!
    expect(prime_fibonnaci(2)).to eq []
  end
  it "returns the primes from the first 10 fibonacci numbers" do
    expect(prime_fibonnaci(10)).to eq [2, 3, 5, 13]
  end
  it "returns the primes from the first 20 fibonacci numbers" do
    expect(prime_fibonnaci(20)).to eq [2, 3, 5, 13, 89, 233, 1597]
  end
end

# What happens when you ask for even larger sets? Why?
# Can you think of a way around it?
