class Ogre
    attr_accessor :name, :swings, :home, :encounter_counter
    
    def initialize(name, home='Swamp')
        @name = name
        @swings = 0
        @home = home
        @encounter_counter = 0
    end

    def swing_at(human)
        @swings += 1
    end
    

    def encounter(human)
        human.increase
        @encounter_counter += 1
        if human.notices_ogre?
            swing_at(human)
            if @swings.even?
                human.knock_out
            end
        end
    end

    def apologize(human)
        human.wakes_up
    end

    

end

class Human
    attr_accessor :name, :encounter_counter
    def initialize(name='Jane')
        @name = name
        @encounter_counter = 0
        @knocked_out = false
    end

    def knock_out
        @knocked_out = true
    end

    def wakes_up
        @knocked_out = false
    end

    def knocked_out?
        @knocked_out
    end

    def increase
        @encounter_counter += 1
    end
    
    def notices_ogre?
        @encounter_counter % 3 == 0
    end
end