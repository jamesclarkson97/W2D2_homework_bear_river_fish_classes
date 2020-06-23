class Bears

    attr_reader :name

    def initialize(name)
        @name = name
        @stomach = []
    end

    def bear_hunger_scale()
        return @stomach
    end

    def take_fish(new_fish)
        @stomach.push(new_fish)
    end

    def roar()
        return "ROAR"
    end
end