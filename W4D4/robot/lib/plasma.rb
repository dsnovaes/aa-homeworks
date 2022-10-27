require "weapon"

class PlasmaCannon < Weapon

    attr_reader :name, :weight, :damage

    def initialize(name,weight,damage)
        @name = name
        @weight = weight
        @damage = damage
        super(name,weight)
    end

end