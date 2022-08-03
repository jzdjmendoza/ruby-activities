class Player
    def initialize(name, type, skill)
        @name = name
        @type = type
        @skill = skill
    end

    def greet
        puts "Welcome, #{@name}! You are a/an #{@type}, and you have #{@skill} ability."
    end

    def kill
        puts "#{@name} is killed."
    end
end

player1 = Player.new('Jean', 'wizard', 'telekinetic')
player1.greet
player1.kill

player2 = Player.new('Hank', 'infantry', 'supersmash')
player2.greet