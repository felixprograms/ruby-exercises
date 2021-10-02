class Medusa
    def initialize(name)
        @name = name
        @statues = []
        @victims = []
        @more_than_three = false
    end

    def name
        @name
    end

    def statues
        @statues
    end

    def stare(victim)
        victim.turn_to_stone
        @statues << victim
        if @statues.length > 3
            @statues.shift
        end
    end
    

    def more_than_three?
        @more_than_three
    end
    

    
end

class Person < Medusa
    def initialize(person)
        @person = person
        @stoned = false
    end

    def name
        @person
    end

    def person
        @person
    end

    def turn_to_stone
        @stoned = true
    end

    def stoned?
        
        @stoned
    end
end