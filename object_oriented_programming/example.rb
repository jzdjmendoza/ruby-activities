#public example
class PublicClass
    def initialize
    end

    def public_method
        puts "It's a public method"
        private_method
        protected_method
    end

    private
    def private_method
        puts "It's a private method"
    end

    protected
    def protected_method
        puts "It's a #{self.class}"
    end
end

def SameClass < PublicClass
end

class SubClass < PublicClass
    def new_method(object)
        private_method
        object.protected_method
        protected_method
    end
end

class DifferentClass
    def different_method
        PublicClass.new.protected_method
        # private_method
    end
end

public_class = PublicClass.new
public_class.public_method
# public_class.private_method

sub_class = SubClass.new
sub_class.new_method

different_class = DifferentClass.new
different_class.different_method
