class River

    attr_reader :name

    def initialize(name)
        @name = name
        @fish = []
    end

    def add_fish(new_fish)
        @fish.push(new_fish)
    end

    def add_fishes(river, new_fishes)
        for fish in new_fishes
            river.add_fish(fish)
        end
    end
end