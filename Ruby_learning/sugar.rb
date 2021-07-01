ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly

# Более простое "если true" Синтаксис выглядит так:
expression if boolean

puts "It's true!" if true

# Однострочный, если false
hungre = false
puts "i am not hungre!" unless hungre

# тернарное условное выражение
# Синтаксис выглядит так:
boolean ? Do this if true: Do this if false

puts 3 < 4 ? "3 is less than 4!" : "3 is not less than 4."

# краткая альтернатива: case. Синтаксис выглядит так:
language = gets.chomp
case language
  when "JS" then puts "Websites!"
  when "Python" then puts "Science!"
  when "Ruby" then puts "Web apps!"
  else puts "I don't know!"
end

# Условное присвоение ||=
favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book

#=> Cat's Cradle
#=> Cat's Cradle
#=> Why's (Poignant) Guide to Ruby

# Оценка короткого замыкания
def a
    puts "A was evaluated!"
    return true
  end
  
  def b
    puts "B was also evaluated!"
    return true
  end
  
  puts a || b
  puts "------"
  puts a && b
#A was evaluated!
#true
#------
#A was evaluated!
#B was also evaluated!
#true

# even? четное? → истина или ложь Возвращает true, если int - четное число.
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each {|int| puts int if int.even? }

# .upto и .downto
95.upto(100) { |num| print num, " " }
# Prints 95 96 97 98 99 100

#################
"L".upto("P") {|letter| puts letter}
L
M
N
O
P

# metod respond_to? отвечает на? принимает символ и возвращает, true если объект может получить этот метод, и false в противном случае. 
age = 26
p age.respond_to?(:next)
p age.next
#=> true
#=> 27

# << в оператор конкатенации
alphabet = ["a", "b", "c"]
alphabet.push("d") # Update me!

caption = "A giraffe surrounded by "
caption += "weezards!" # Me, too!
# способ с <<
alphabet = ["a", "b", "c"]
alphabet << "d" # Update me!

caption = "A giraffe surrounded by "
caption << "weezards!" # Me, too!

