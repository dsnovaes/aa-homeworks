require "item"

class Weapon < Item

    attr_reader :name, :weight, :damage

    def initialize(name, weight, damage)
        @name = name
        @weight = weight
        @damage = damage
        super(name, weight)
    end
    def hit(other_robot)
        other_robot.wound(@damage)
    end

end