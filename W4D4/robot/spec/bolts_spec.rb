require "bolts"

describe Bolts do
    subject(:bolts) { Bolts.new }
  
    it "initializes as an Item with the correct name and weight" do
      expect(bolts).to be_an(Item)
      expect(bolts.name).to eq("bolts")
      expect(bolts.weight).to eq(25)
    end
  
    describe "#feed" do
      it "heals the robots health 25pts" do
        robot = double("robot")
        expect(robot).to receive(:heal).with(25)
  
        bolts.feed(robot)
      end
    end
  end