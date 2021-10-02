class Pirate
    def initialize(name, job='Scallywag')
        @name = name
        @poi = 0
        @job = job
        @booty = 0
    end

    def name
        @name
    end
    
    def job
        @job
    end

    def commit_heinous_act
        @poi += 1
    end

    def cursed?
        @poi >= 3
    end

    def booty
        @booty
    end

    def rob
        @booty += 100
    end

end