class Bears

    attr_reader :name

    def initialize(name)
        @name = name
        @stomach = []
    end

    def bear_hunger_scale()
        return @stomach
    end
end