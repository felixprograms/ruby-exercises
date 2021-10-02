class Unicorn
    def initialize(name, color='silver')
        @name = name
        @color = color
    end

    def name
        @name
    end
    
    def color
        @color
    end

    def silver?
        @color == 'silver'
    end

    def say(stuff)
        stuff.unshift('**;* ')
        stuff + ' **;*'
    end
end