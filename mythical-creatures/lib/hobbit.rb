class Hobbit
    def initialize(name)
        @name = name
        @age = 0
    end

    def name
        @name
    end

    def age
        @age
    end

    def celebrate_birthday
        @age += 1
    end

    def adult?
        @age >= 33 && @age <= 70
    end

    def old?
        @age >= 71
    end
    
    def has_ring?(poy)
        if poy == 'Frodo'
            true
        else
            false
        end
    end

    def is_short?
        true
    end
end