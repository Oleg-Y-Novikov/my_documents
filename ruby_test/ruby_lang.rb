# Math.sqrt(9)

# a = 3 ** 2
# b = 4 ** 2
# puts Math.sqrt(a + b)

# def Hi
#     puts "Hello World"
# end

# def hi(name = "World")
#     puts "Hello #{name.capitalize}!"
# end

# hi 

# class Greeter
#     def initialize(name = "World")
#         @name = name
#     end
#     def say_hi
#         puts "Hi #{@name}!"
#     end
#     def say_bye
#         puts "Bye #{@name}, com back soon."
#     end
# end
#  greeter = Greeter.new()
#  greeter.say_hi
#  greeter.say_bye
 
# class Greeter
#     attr_accessor :name
# end


class MegaGreeter
    attr_accessor :names
    def initialize(names = "World")
        @names = names
    end

    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else
            puts "Hello #{@names}!"
        end
    end
    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            puts "Goodbye #{@names.join(", ")}. Com back soon!"
        else
            puts "Goodbye #{@names}. Come back soon!"
        end
    end
end

if __FILE__ ==$0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    mg.names = "Zeke"
    mg.say_hi
    mg.say_bye

    mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
    mg.say_hi
    mg.say_bye

    mg.names = nil
    mg.say_hi
    mg.say_bye
end