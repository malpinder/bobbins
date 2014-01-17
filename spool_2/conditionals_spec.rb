require './spec_helper'

describe "Conditionals" do

  describe "if... end" do
    it "runs what's inside if the conditional is true" do
      status = :sunny
      clothing = []

      if status == :sunny
        clothing << "hat"
      end

      clothing.should eq __
    end

    it "does not run what's inside if the conditional is false" do
      status = :sunny
      clothing = []

      if __
        clothing << "raincoat"
      end

      clothing.should eq []
    end

    it "can be written at the end of the line" do
      status = :rainy
      clothing = []

      clothing << __ if status == :rainy

      clothing.should eq ["wellingtons"]
    end

    it "does not run any of the line if the end-line conditional is false" do
      fish = "trout"

      backwards_fish = fish.reverse! if fish == "halibut"

      [backwards_fish, fish].should eq __
    end
  end

  describe "if... else... end" do
    it "runs what's inside the first part if the conditional is true" do
      winning_tickets = [6672, 9832, 1981]
      my_ticket = __
      if numbers.include? my_ticket
        prize = :fluffy_unicorn
      else
        prize = nil
      end
      prize.should eq :fluffy_unicorn
    end

    it "runs what's in the second part if the conditional is false" do
      winning_tickets = [6672, 9832, 1981]
      my_ticket = __
      if numbers.include? my_ticket
        prize = :fluffy_unicorn
      else
        prize = nil
      end
      prize.should eq nil
    end
  end

  describe "if... elsif... end" do
    def calculate_presents_given(givers)
      if givers.include?("Sam")
        3
      elsif givers.include?("Chris")
        1
      end
    end

    it "runs what's inside the first part if the conditional is true" do
      givers = ["Sam", "Finn"]
      number_of_presents = calculate_presents_given(givers)
      number_of_presents.should eq __
    end

    it "runs what's in the second part if the first conditional is false and the second conditional is true" do
      givers = [ "Maude", __ ]
      number_of_presents = calculate_presents_given(givers)
      number_of_presents.should eq __
    end

    it "does not run what's in the second part if the first part is true, even if the second conditional is also true" do
      if 1 == 1
        result = "All fine"
      else
        raise "The universe isn't right any more"
      end
      result.should eq __
    end

    it "doesn't do anything if they are both false" do
      givers = __
      number_of_presents = calculate_presents_given(givers)
      number_of_presents.should eq __
    end
  end

  describe "if... elsif.. else... end" do
    def message(occasion)
      if occasion == "birthday"
        "Happy birthday!"
      elsif occasion == "illness"
        "Get well soon"
      else
        "Congratulations!"
      end
    end

    it "runs what's inside the first part if the first conditional is true" do
      message("birthday").should eq __
    end
    it "runs what's in the second part if the second conditional is true" do
      message("illness").should eq __
    end
    it "runs what's in the third part if the both conditionals are false" do
      message(__).should eq "Congratulations!"
    end
  end

  describe "unless... end" do
    it "is a shorthand for if !..." do
      word = "up"
      unless __
        word = "down"
      end

      word.should eq "down"
    end
  end

  describe "unless... else... end"
    it "can be used (but don't, because it makes brains hurt)" do
      direction = "left"
      facing_north = __

      unless facing_north
        direction = "east"
      else
        direction = "west"
      end

      direction.should eq "west"
    end

    # Can you re-write this unless... else statement so that the logic remains
    # the same, but it uses an if... else statement instead?
  end

  describe "inline if / else (ternary operators)" do
    it "uses ? and :, without an end" do
      result = (__ ? :rain : :shine)
      result.should eq :rain
    end
  end

end
