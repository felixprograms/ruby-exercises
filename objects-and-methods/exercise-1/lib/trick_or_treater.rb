class TrickOrTreater 
    def initialize(ccccccc)
        @costume = ccccccc
        @bag = []
    end

    

    def dressed_up_as
        @costume.style
    end

    def bag
        @bag
    end

    def has_candy?
        bag.length >= 1
    end

    def candy_count
        bag.length
    end

    def eat
        bag.pop
    end
end