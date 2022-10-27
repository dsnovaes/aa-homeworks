# require "rspec"
require "robot"

describe Robot do
  subject(:robot) { Robot.new }

  describe "#position" do
    it "starts at the origin" do
      expect(robot.position).to eq([0, 0])
    end 
  end

  describe "move methods" do
    it "moves left" do
      robot.move_left
      expect(robot.position).to eq([-1, 0])
    end

    it "moves right" do
      robot.move_right
      expect(robot.position).to eq([1, 0])
    end

    it "moves up" do
      robot.move_up
      expect(robot.position).to eq([0, 1])
    end

    it "moves down" do
      robot.move_down
      expect(robot.position).to eq([0, -1])
    end
  end
end



describe Robot do
  subject(:robot) { Robot.new }
  let(:item1) { double(:weight => 10) }
  let(:item2) { double(:weight => 30) }

  let(:max_weight_item) { double(:weight => 250) }
  let(:straw_that_breaks_the_camels_back) { double(:weight => 1) }

  describe "#items" do
    it "starts as an empty array" do
      expect(robot.items).to eq([])
    end
  end

  describe "#pick_up" do
    it "adds item to items" do
      robot.pick_up(item1)
      expect(robot.items).to include(item1)
    end
  end

  describe "#items_weight" do
    it "starts with a weight of zero" do
      expect(robot.items_weight).to eq(0)
    end

    it "should sum items weights" do
      robot.pick_up(item1)
      robot.pick_up(item2)

      expect(robot.items_weight).to eq(40)
    end
  end

  describe "#pick_up" do
    it "should not add item past maximum weight of 250" do
      robot.pick_up(max_weight_item)

      expect do
        robot.pick_up(straw_that_breaks_the_camels_back)
      end.to raise_error(ArgumentError)
    end
  end
end

describe Robot do
  subject(:robot) { Robot.new }

  describe "#health" do
    it "starts at 100" do
      expect(robot.health).to eq(100)
    end
  end

  describe "#wound" do
    it "decreases health" do
      robot.wound(20)
      expect(robot.health).to eq(80)
    end

    it "doesn't decrease health below 0" do
      robot.wound(150)
      expect(robot.health).to eq(0)
    end
  end

  describe "#heal" do
    it "increases health" do
      robot.wound(40)
      robot.heal(20)
      expect(robot.health).to eq(80)
    end

    it "doesn't increase health over 100" do
      robot.heal(10)
      expect(robot.health).to eq(100)
    end
  end

  describe "#attack" do
    it "wounds other robot with weak default attack" do
      robot2 = double("robot2")
      expect(robot2).to receive(:wound).with(5)

      robot.attack(robot2)
    end
  end
end


describe Robot do
  subject(:robot) { Robot.new }

  describe "#equipped_weapon" do
    it "starts with no weapon equipped" do
      expect(robot.equipped_weapon).to eq(nil)
    end

    it "sets equipped weapon" do
      weapon = double("weapon")

      robot.equipped_weapon = weapon
      expect(robot.equipped_weapon).to eq(weapon)
    end
  end

  describe "#attack" do
    let(:robot2) { double("robot2") }
    let(:weapon) { double("weapon") }

    it "uses the equipped weapon in attack" do
      robot.equipped_weapon = weapon

      expect(weapon).to receive(:hit).with(robot2)
      robot.attack(robot2)
    end
  end
end