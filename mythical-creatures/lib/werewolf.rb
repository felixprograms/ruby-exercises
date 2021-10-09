class Werewolf
    attr_accessor :name, :location
    def initialize(name,location='London')
        @name = name
        @location = location
        @human = true
        @wolf = false
    end

    def human?
        @human
    end

    def wolf?
        @human == false
    end
    
    def change!
        if @human == true
            @human = false
        else
            @human = true
        end
    end
end