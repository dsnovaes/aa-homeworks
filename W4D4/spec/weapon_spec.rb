require "weapon"

describe Weapon do
    subject(:weapon) { Weapon.new("power_shock", 10, 45) }
  
    it "initializes as an Item with the correct name, weight, and damage" do
      expect(weapon).to be_an(Item)
      expect(weapon.name).to eq("power_shock")
      expect(weapon.weight).to eq(10)
      expect(weapon.damage).to eq(45)
    end
  
    describe "#hit" do
      let(:robot) { double("robot") }
  
      it "hurts robot" do
        expect(robot).to receive(:wound).with(45)
        weapon.hit(robot)
      end
    end
  end