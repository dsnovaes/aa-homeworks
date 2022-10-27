class Robot

    attr_accessor :equipped_weapon, :health, :items, :position, :items_weight

    def initialize
        @position = [0,0]
        @health = 100
        @items = []
        @items_weight = 0
        @equipped_weapon = nil
    end

    def move_left
        @position = [-1,0]
    end

    def move_right
        @position = [1,0]
    end

    def move_up
        @position = [0,1]
    end

    def move_down
        @position = [0,-1]
    end

    def pick_up(item)
        if @items_weight + item.weight > 250
            raise ArgumentError.new("Item too heavy")
        else
            @items << item
            @items_weight += item.weight
        end
    end

    def wound(amount)

        if @health - amount >= 0
            @health -= amount
        elsif @health - amount < 0
            @health = 0
        end

        # @health -= amount if @health - amount >= 0
    end

    def heal(amount)
        @health += amount unless @health + amount >= 100
    end

    def attack(other_robot)
        @equipped_weapon.hit(other_robot)
        other_robot.wound(5) # @equipped_weapon.damage
    end

end
