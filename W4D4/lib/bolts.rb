require_relative "item"

class Bolts < Item

    attr_reader :name, :weight

    def initialize 
        super("bolts",25)
    end

    def feed(who)
        who.heal(self.weight)
    end

end