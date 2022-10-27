require "plasma"

describe PlasmaCannon do
    subject(:plasma_cannon) { PlasmaCannon.new }
  
    it "initializes as a Weapon with the correct name, weight, and damage" do
      expect(plasma_cannon).to be_a(Weapon)
      expect(plasma_cannon.name).to eq("plasma_cannon")
      expect(plasma_cannon.weight).to eq(200)
      expect(plasma_cannon.damage).to eq(55)
    end
  end