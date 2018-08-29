require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:subdae) { Dessert.new("Sundae",30, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(subject.type).to eq("Sundae")
    end

    it "sets a quantity" do
      expect(subject.quantity).to eq(30)
    end

    it "starts ingredients as an empty array" do
      expect(subject.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{ Dessert.new("Sundae",'30', :chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      subject.add_ingredient("Ice Cream")
      expect(subject.ingredients).to include("Ice Cream")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      subject.add_ingredient("Hot Fudge")
      subject.add_ingredient("Whipped Cream")
      subject.add_ingredient("Ice Cream")
      subject.mix!
      expect(subject.ingredients).to_not eq(["Hot Fudge","Whipped Cream","Ice Cream"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      subject.eat(3)
      expect(subject.quantity).to eq(27)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{subject.eat(50)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef")
      expect(subject.serve).to include('Chef')
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with(Dessert)
      subject.make_more
    end
  end
end
