class Language #имена классов начинаются с заглавной буквы и используют CamelCase
    def initialize(name, creator)
      @name = name
      @creator = creator
    end
      
    def description
      puts "I'm #{@name} and I was created by #{@creator}!"
    end
  end
  
  ruby = Language.new("Ruby", "Yukihiro Matsumoto")
  python = Language.new("Python", "Guido van Rossum")
  javascript = Language.new("JavaScript", "Brendan Eich")
  
  ruby.description
  python.description
  javascript.description



####
class Computer
    $manufacturer = "Mango Computer, Inc."
    @@files = {hello: "Hello, world!"}
    
    def initialize(username, password)
      @username = username
      @password = password
    end
    
    def current_user
      @username
    end
    
    def self.display_files
      @@files
    end
  end
  
  # Make a new Computer instance:
  hal = Computer.new("Dave", 12345)
  
  puts "Current user: #{hal.current_user}"
  # @username belongs to the hal instance.
  
  puts "Manufacturer: #{$manufacturer}"
  # $manufacturer is global! We can get it directly.
  
  puts "Files: #{Computer.display_files}"
  # @@files belongs to the Computer class.


  ### глобальная переменная доступна везде
  class MyClass
    $my_variable = "Hello!"
  end
  
  puts $my_variable



#############
class Person
    # Set your class variable to 0 on line 3
    @@people_count = 0
    
    def initialize(name)
      @name = name
      # Increment your class variable on line 8
      @@people_count += 1
    end
    
    def self.number_of_instances
      # Return your class variable on line 13
      @@people_count
    end
  end
  
  matz = Person.new("Yukihiro")
  dhh = Person.new("David")
  
  puts "Number of Person instances: #{Person.number_of_instances}"
#=> Number of Person instances: 2


###
def create_record(attributes, raise_error = false)
    record = build_record(attributes)
    yield(record) if block_given?
    saved = record.save
    set_new_record(record)
    raise RecordInvalid.new(record) if !saved && raise_error
    record
  end



#Наследование
#Синтаксис наследования
class DerivedClass < BaseClass
    # Some stuff!
  end
##########
class Application
    def initialize(name)
      @name = name
    end
  end
  # Add your code below!
  class MyApp < Application; end



#####
class ApplicationError
    def display_error
      puts "Error! Error!"
    end
  end
  
  class SuperBadError < ApplicationError
  end
  
  err = SuperBadError.new
  err.display_error
  #=> Error! Error!



#переопределяем метод из родительского класса
class Creature
    def initialize(name)
      @name = name
    end
    
    def fight
      return "Punch to the chops!"
    end
  end
  
  # Add your code below!
  class Dragon < Creature
    def fight
    "Breathes fire!"
    end
  end

#Когда вы вызываете super метод изнутри, он сообщает Ruby, 
#что нужно посмотреть в суперклассе текущего класса и найти метод с тем же именем,
#что и тот, из которого super вызывается. Если он его найдет, Ruby будет использовать версию метода суперкласса.
class Creature
    def initialize(name)
      @name = name
    end
    
    def fight
      return "Punch to the chops!"
    end
  end
  
  # Add your code below!
  class Dragon < Creature
    def fight
    puts "Instead of breathing fire..."
    super #<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    end
  end


# ВИРТУАЛЬНЫЙ КОМПЬЮТЕР
class Machine
    @@users = {}
    
    def initialize(username, password)
      @username = username
      @password = password
      @@users[username] = password
      @files = {}
    end
    
    def create(filename)
      time = Time.now
      @files[filename] = time
      puts "#{filename} was created by #{@username} at #{time}."
    end
    
    def Machine.get_users
      @@users
    end
  end
  
  my_machine = Machine.new("eric", 01234)
  your_machine = Machine.new("you", 56789)
  
  my_machine.create("groceries.txt")
  your_machine.create("todo.txt")
  
  puts "Users: #{Machine.get_users}"




  ##################################################
  class Computer
    @@users = {}
      def initialize(username, password)
      @username = username
      @password = password
      @files = {}
      @@users[username] = @password
      end
    
      def create(filename)
      time = Time.now
      @files[filename] = time
      puts "#{filename} was created by #{@username} at #{time}."
      end
      
      def update(filename)
        #if @files.include?(filename)
        puts "what do you want to do? Enter delite or update:"
        input = gets.chomp
        if input == "delete" && @files.include?(filename)
        @files.delete(filename)
        puts "#{filename} has been removed."
        elsif input == "update" && @files.include?(filename)
        time = Time.now
        @files[filename] = time
        puts "#{filename} update by #{@username} at #{time}!"
        else
        puts "File not faund!"
        end
      end
    
       def display
      puts @files
      end
    
      def Computer.get_users
      @@users
      end
    end
    
    my_computer = Computer.new("Oleg", 55555)
    my_computer.create("doc.rb")
    my_computer.update("doca.rb")
    #puts Computer.get_users
    my_computer.display