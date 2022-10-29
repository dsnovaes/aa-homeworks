require "rspec"
require "dessert"

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) { Dessert.new("ice cream", 50, chef) }
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("ice cream")
    end 

    it "sets a quantity" do
      expect(dessert.quantity).to eq(50)
    end 

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end 

    it "raises an argument error when given a non-integer quantity" do
      expect { dessert.quantity = "dog" }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("flower")
      expect(dessert.ingredients).to_not be([])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      10.times { dessert.add_ingredient(rand(100..9999).to_s) }
      expect(dessert.ingredients.shuffle()).to_not eq(dessert.ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(20)
      expect(dessert.quantity).to eq(30)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{ dessert.eat(51) }.to raise_error
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
