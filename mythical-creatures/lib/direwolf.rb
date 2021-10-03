class Direwolf
    def initialize(name, home='Beyond the Wall', size='Massive')
        @name = name
        @home = home
        @size = size
        @starks = []
        @hunt = true
    end

    def name
        @name
    end

    def home
        @home
    end

    def size
        @size
    end

    def starks_to_protect
        @starks
    end

    def protects(stark)
        if stark.location == @home && @starks.length < 2
            @starks << stark
            stark.make_safe
            @hunt = false
        end
    end

    def leaves(stark)
        stark.not_safe
        @starks.delete(stark)
        stark
    end

    def hunts_white_walkers?
        @hunt
    end
end

class Stark
    def initialize(name, location='Winterfell')
        @name = name
        @location = location
        @safety = false
    end

    def make_safe
        @safety = true 
    end

    def not_safe
        @safety = false
    end

    def location
        @location
    end

    def name
        @name
    end

    def safe?
        @safety
    end

    def house_words
        'Winter is Coming'
    end
end