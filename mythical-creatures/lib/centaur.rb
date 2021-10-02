class Centaur
    def initialize(horse, breed)
        @horse = horse
        @breed = breed
        @cranky = false
        @standing = true
        @sleep = false
        @laying = false
    end

    def name
        @horse
    end

    def breed
        @breed
    end

    def shoot
        if @cranky == false && @laying == false
            @cranky = true
            return 'Twang!!!'
        else
            'NO!'
        end
    end

    def run
        if @laying == false
            return 'Clop clop clop clop!'
        else
            'NO!'
        end
    end

    def cranky?
        @cranky
    end

    def standing?
        @standing
    end

    def lay_down
        @laying = true
        @standing = false
    end

    def stand_up
        @standing = true
        @laying = false
    end

    def laying?
        @laying
    end

    def sleep
        @cranky = false
        if standing?
            return 'NO!'
        else
            @sleep
        end
    end

end