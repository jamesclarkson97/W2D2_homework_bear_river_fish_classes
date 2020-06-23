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

    def food_count(new_food)
        food_storaged = 0
        return food_storaged += new_food
    end
end