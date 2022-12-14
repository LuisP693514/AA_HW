require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) {Dessert.new("cake",50, chef)}

  describe "#initialize" do
    it "sets a type" do

      expect(dessert.type).to eq("cake")

    end

    it "sets a quantity" do

      expect(dessert.quantity).to eq(50)

    end

    it "starts ingredients as an empty array" do

      expect(dessert.ingredients).to eq([])

    end

    it "raises an argument error when given a non-integer quantity" do
     
      expect {Dessert.new("cake",nil, chef)}.to raise_error(ArgumentError)
      expect {Dessert.new("cake","nil", chef)}.to raise_error(ArgumentError)
      expect {Dessert.new("cake",2.0, chef)}.to raise_error(ArgumentError)
      expect {Dessert.new("cake",false, chef)}.to raise_error(ArgumentError)
      expect {Dessert.new("cake",[], chef)}.to raise_error(ArgumentError)


    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
