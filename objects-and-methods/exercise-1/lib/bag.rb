class Bag
    def initialize()
        @candies = []
        candies
    end

    def <<(candy)
        @candies << candy
    end

    def empty?
        @candies.empty?
    end

    def count
        @candies.count
    end

    def candies
        @candies
    end

    def contains?(candy_name)
        @candies.any? do |candy|
            candy.type == candy_name
        end
    end
end