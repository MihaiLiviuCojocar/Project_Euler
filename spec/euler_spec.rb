require 'euler'

describe "Application Euler" do

  context "in order to work" do

    it "should know that 3 is a multiple of 3" do
      expect(is_multiple_of_three?(3)).to be_true
    end

    it "should know that 2 is not a a multiple of 3" do
      expect(is_multiple_of_three?(2)).to be_false
    end

    it "should know that 5 is a multiple of 5" do
      expect(is_multiple_of_five?(5)).to be_true
    end

    it "should know that 2 is not a multiple of 5" do
      expect(is_multiple_of_five?(2)).to be_false
    end

    it "should extract the multiples of 3 from a list of numbers" do
      numbers = (1..10).to_a
      expect(multiples_of_three(numbers)).to eq([3,6,9])
    end

    it "should extract the multiples of 5 from a list of numbers" do
      numbers = (1..10).to_a
      expect(multiples_of_five(numbers)).to eq([5,10])
    end

    it "should be able to add some numbers" do
      numbers = (1..5).to_a
      expect(sum(numbers)).to eq(15)
    end

    it "should be able to create a list of all multiples of 3 and 5, given a list of numbers" do
      numbers = (1..10).to_a
      expect(multiples_of_three_and_five(numbers)).to eq([3,5,6,9,10])
    end

    it "should be able to sum the multiples of 3 and 5 given a list of numbers" do
      expect(sum_all_multipliers_of_3_and_5(10)).to eq(23)
    end

  end

end