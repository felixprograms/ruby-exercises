class Wizard
    attr_accessor :name
    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @energy = 3
    end

    def name
        @name
    end

    def bearded?
        @bearded
    end

    def incantation(root)
        return 'sudo ' + root
    end

    def rested?
        @energy > 0
    end

    def cast
        @energy - 1
        return 'MAGIC MISSILE!'
    end
end