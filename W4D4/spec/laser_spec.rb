require "laser"

describe Laser do
    subject(:laser) { Laser.new }
  
    it "initializes as a Weapon with the correct name, weight, and damage" do
      expect(laser).to be_a(Weapon)
      expect(laser.name).to eq("laser")
      expect(laser.weight).to eq(125)
      expect(laser.damage).to eq(25)
    end
  end