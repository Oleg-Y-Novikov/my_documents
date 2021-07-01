class Person
    def initialize(name, age)
      @name = name
      @age = age
    end
    
    public    # This method can be called from outside the class.
    
    def about_me
      puts "I'm #{@name} and I'm #{@age} years old!"
    end
    
    private   # This method can't!
    
    def bank_account_number
      @account_number = 12345
      puts "My bank account number is #{@account_number}."
    end
  end
  
  eric = Person.new("Eric", 26)
  eric.about_me
  eric.bank_account_number



  # attr_reader, attr_writer
  #Мы можем использовать attr_reader для доступа к переменной и attr_writer ее изменения. Если мы напишем
  class Person
    attr_reader :name
    attr_writer :name
    def initialize(name)
      @name = name
    end
  end
  #Ruby автоматически делает что-то подобное для нас:
  def name
    @name
  end
   
  def name=(value)
    @name = value
  end



  #attr_accessor чтобы сделать переменную доступной для чтения и записи одним махом.
  class Person
    attr_accessor :name
    attr_accessor :job
    attr_accessor :job
    
    def initialize(name, job)
      @name = name
      @job = job
    end
  end



#Что такое модуль?
#Вы можете думать о модуле как о наборе инструментов, который содержит набор методов и констант.
#модули не могут создавать экземпляры и не могут иметь подклассы. Они просто используются для хранения вещей!
#Синтаксис модуля
module ModuleName
    # Bits 'n pieces
end
#Как и имена классов, имена модулей записываются в CapitalizedCamelCase, а не в lowercase_with_underscores.
#Константы Ruby записываются в ALL_CAPS и разделяются подчеркиванием, если имеется более одного слова.
module MyLibrary
  FAVE_BOOK = "Metro 2033"
end


# :: Если мы говорим Math::PI, Ruby знает, что нужно заглянуть внутрь Math модуля, чтобы получить это PI, а не какой-либо другой PI
puts Math::PI


#Некоторые модули вроде бы Math уже присутствуют в интерпретаторе. Однако необходимо явно указать другие, 
#и мы можем сделать это с помощью require. Мы можем сделать это, просто набрав

require 'module'

#####
require 'date'
puts Date.today
#=>2021-03-26


### include подключаем модуль к классу
class Angle
    include Math
    attr_accessor :radians
    
    def initialize(radians)
      @radians = radians
    end
    
    def cosine
      cos(@radians)
    end
  end
  
  acute = Angle.new(1)
  acute.cosine



#Когда модуль используется для смешивания дополнительного поведения и информации в классе, он называется миксином .
module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump



#В то время как include смешивает методы модуля на уровне экземпляра (позволяя экземплярам определенного класса использовать методы),
#extend ключевое слово смешивает методы модуля на уровне класса. Это означает, что сам класс может использовать методы, а не экземпляры класса.

# ThePresent has a .now method that we'll extend to TheHereAnd
module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now



#############################
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

my_account = Account.new("Eric", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)

#=> Access denied: incorrect PIN.
#=> Balance: $1000000.
#=> Withdrew 500000. New balance: $500000.
#=> Balance: $500000. 