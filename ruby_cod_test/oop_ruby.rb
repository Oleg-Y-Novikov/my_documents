class Person
    def initialize(name, surname, age)
      @name = name
      @surname = surname
      @age = age
    end
  
    def sey_hello
      puts "Hello, my name is #{@name}, I'm #{@age} years old!"
    end
  
    def residential_address(street, number)
      puts "I live on the street #{street}, house number #{number}."
    end
  end
  
oleg = Person.new("Oleg", "Novikov", 29)
katia = Person.new("Ekaterina", "Savenko", 21)
oleg.sey_hello
oleg.residential_address("Sovetskaya", 79)

#использую переменную самого класса @@city
class Person
  @@city = "Andruki" #переменная класса
    def initialize(name, surname, age)
      @name = name
      @surname = surname
      @age = age
    end

    def self.place_of_residence #self.name_class_method, я понимаю, что это метод класса
      return @@city #либо puts ...
    end

    def sey_hello
      puts "Hello, my name is #{@name}, I'm #{@age} years old!"
    end
  
    def residential_address(street, number)
      puts "I live on the street #{street}, house number #{number}."
    end
  end
  
oleg = Person.new("Oleg", "Novikov", 29)
katia = Person.new("Ekaterina", "Savenko", 21)
oleg.sey_hello
oleg.residential_address("Sovetskaya", 79)
puts "we live in the village #{Person.place_of_residence}"# Person.plase_of_residence выведет puts из метода def self

#ДОБАВИЛ МАССИВ
class Person
  @@city = Array.new #переменная класса
    def initialize(name, surname, age, city)
      @name = name
      @surname = surname
      @age = age
      @city = city
      @@city.push(city) #либо @@city << city
    end

    def self.place_of_residence #self.name_class_method, я понимаю, что это метод класса
      return @@city #либо puts ...
    end
def my_city
  puts @city
end

    def sey_hello
      puts "Hello, my name is #{@name}, I'm #{@age} years old!"
    end
  
    def residential_address(street, number)
      puts "I live on the street #{street}, house number #{number}."
    end
  end
oleg = Person.new("OLEG", "NOVIKOV", 29, "NOVOROS")
katia = Person.new("Katia", "Savenko", 21, "Andryki")
oleg.my_city
katia.my_city
print Person.place_of_residence

#ATTR_READER and ATTR_WRITER
class Person
  attr_reader :name
  attr_writer :job
  def initialize(name, job)
    @name = name
    @job = job
  end
end
me = Person.new("Oleg", "CTN")
puts me.name
me.job = "WWW"
puts me



#ATTR_ACCESSOR запись и чтение определенной переменной
class Person
  attr_reader :name
  attr_accessor :job
  def initialize(name, job)
    @name = name
    @job = job
  end
end
me = Person.new("Oleg", "CTN")
p me.name
p me.job
p me.job = "WWW"
p me



module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now