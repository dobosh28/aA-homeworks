require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) { Dessert.new("cheesecake", 25, chef) }
  let(:chef) { double("chef", :name => "chef dobosh", :titleize => "Chef Dobosh the Great Baker") }

  describe "#initialize" do
    it "sets a type" do 
      expect(dessert.type).to eq("cheesecake")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(25)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("cheesecake", "many", "Chef Dobosh") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to_not include("egg")
      dessert.add_ingredient("egg")
      expect(dessert.ingredients).to include("egg")
    end
  end

  describe "#mix!" do
    let(:ingredients) { ["egg", "cream cheese", "sugar", "butter"] }
    it "shuffles the ingredient array" do
      dessert.mix!
      expect(dessert.ingredients).to_not eq(ingredients)
    end
  end

  describe "#eat" do
    let(:quantity) { quantity = 8 }
    it "subtracts an amount from the quantity" do
      expect(dessert.eat(3)).to eq(5)
    end

    it "raises an error if the amount is greater than the quantity" do 
      expect { dessert.eat(10) }.to raise_error("there is no more cheesecake left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect (chef.serve).to include("Chef Dobosh the Great Baker")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
