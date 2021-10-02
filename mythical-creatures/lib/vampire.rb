class Vampire
    def initialize(name, pet='bat')
        @name = name
        @pet = pet
        @thirsty = true
    end

    def pet
        @pet
    end

    def name
        @name
    end

    def thirsty
        @thirsty
    end

    def drink
        @thirsty = false
    end
end