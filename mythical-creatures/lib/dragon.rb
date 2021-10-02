class Dragon
    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @food = 0
    end

    def color
        @color
    end

    def rider
        @rider
    end

    def name
        @name
    end

    def hungry?
        @food <= 2
    end

    def eat
        @food += 1
    end
end