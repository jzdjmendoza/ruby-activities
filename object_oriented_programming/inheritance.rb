class Confection
    def initialize(temp, time)
        @temp = temp
        @time = time
    end

    def prepare
        "Baking at #{@temp} degrees for #{@time} minutes."
    end
end

class Cupcake < Confection
    def prepare
        super + ' Applying frosting.'
    end
end

class BananaCake < Confection
end

cupcake = Cupcake.new(350, 25)
banana_cake = BananaCake.new(350, 25)
puts cupcake.prepare
puts banana_cake.prepare