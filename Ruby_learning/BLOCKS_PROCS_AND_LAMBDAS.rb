#Блок Ruby - это всего лишь фрагмент кода, который можно выполнить.
#В синтаксисе блока используются либо do.., end либо фигурные скобки ( {}), например:
#Блоки можно комбинировать с такими методами, как .each и .times
[1, 2, 3].each do |num|
    puts num
  end
  # ==> Prints 1, 2, 3 on separate lines
   
  [1, 2, 3].each { |num| puts num }
  # ==> Prints 1, 2, 3 on separate lines


# collect Метод принимает блок и применяет выражение в блоке к каждому элементу в массиве.
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
# Add your code below!
doubled_fibs = fibs.collect {|num| num * 2}
puts doubled_fibs


# Метод который принимает блок. yield ключевое слово
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }
#=> We're in the method!
#=> Yielding to the block...
#=> >>> We're in the block!
#=> We're back in the method!


#метод который принимает и аргумент и блок
def yield_name(name)
    puts "In the method! Let's yield."
    yield("Kim")
    puts "In between the yields!"
    yield(name)
    puts "Block complete! Back in the method."
  end
  
  yield_name("Eric") { |n| puts "My name is #{n}." }
  # Now call the method with your name!
  yield_name("Oleg") { |n| puts "My name is #{n}." }


  ##########
  def double(x)
    yield(3)
    yield(x)
  end
  double(5) {|z| puts z * 2}
  #=> 6
  #=> 10




# Proc
#Вы можете думать о Proc как о «сохраненном» блоке
=begin С блоками вы должны писать свой код каждый раз, когда он вам нужен; 
с Proc вы пишете свой код один раз и можете использовать его много раз!
=end
multiples_of_3 = Proc.new do |n|
    n % 3 == 0
  end
  print (1..100).to_a.select(&multiples_of_3)

# Синтаксис Proc
cube = Proc.new { |x| x ** 3 }
########
[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]
[4, 5, 6].map!(&cube)
# ==> [64, 125, 216]
#.collect! и .map! методы делают одно и то же.
# & Используется для преобразования cube Proc в блок


floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!
round_down = Proc.new {|x| x.floor} #.floor Метод округляет (число с десятичной) вниз до ближайшего целого числа. 

# Write your code above this line!
ints = floats.collect(&round_down)
print ints


####
def greeter
  yield
end
phrase = Proc.new {puts "Hello there!"}
greeter(&phrase)


#В отличие от блоков, мы можем вызывать процессы напрямую, используя .call метод Ruby . Проверьте это!
hi = Proc.new {puts "Hello!"}
hi.call


#Сопоставляя &:to_i каждый элемент strings, мы превратили каждую строку в целое число!
strings = ["1", "2", "3"]
nums = strings.map(&:to_i)
# ==> [1, 2, 3]



#Рубиновая лямбда
#Лямбда-синтаксис
lambda { |param| block }

##########
def lambda_demo(a_lambda)
    puts "I'm the method!"
    a_lambda.call
  end
  
  lambda_demo(lambda { puts "I'm the lambda!" })



###############
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!
symbolize = lambda {|x| x.to_sym}
# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols
#=> [:leonardo, :donatello, :raphael, :michaelangelo]


#Лямбды против Proc
# 2 отличия
=begin
1.лямбда проверяет количество переданных ей аргументов, а Proc - нет. 
Это означает, что лямбда выдаст ошибку, если вы передадите ему неправильное количество аргументов,
тогда как Proc проигнорирует неожиданные аргументы и назначит nil любые, которые отсутствуют.

2.когда лямбда возвращается, она передает управление обратно вызывающему методу; 
когда Proc возвращается, он делает это немедленно, без возврата к вызывающему методу.
=end
def batman_ironman_proc
    victor = Proc.new { return "Batman will win!" }
    victor.call
    "Iron Man will win!"
  end
  
  puts batman_ironman_proc
  
  def batman_ironman_lambda
    victor = lambda { return "Batman will win!" }
    victor.call
    "Iron Man will win!"
  end
  
  puts batman_ironman_lambda

#=> Batman will win!
#=> Iron Man will win!


#######################
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
# Add your code below!
symbol_filter = lambda {|x| x.is_a? Symbol}

symbols = my_array.select(&symbol_filter)
puts symbols



############
crew = {
    captain: "Picard",
    first_officer: "Riker",
    lt_cdr: "Data",
    lt: "Worf",
    ensign: "Ro",
    counselor: "Troi",
    chief_engineer: "LaForge",
    doctor: "Crusher"
  }
  # Add your code below!
  first_half = lambda {|key, value| value < "M"}
  a_to_m = crew.select(&first_half)
  puts a_to_m
#=> {:lt_cdr=>"Data", :chief_engineer=>"LaForge", :doctor=>"Crusher"}

