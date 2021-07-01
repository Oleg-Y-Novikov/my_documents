print "Integer please: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end

if 2 < 1 # if проверяет сначала true
  p "true"
else
  p "false"
end
  #==> false

  hungry = false
  unless hungry # unless если не, если false то выполняется код
    puts "I'm writing Ruby programs!"
  else
    puts "Time to eat!"
  end
  #==> I'm writing Ruby programs!

# Равно или нет? == !=
  is_true = 2 != 3 # !-не равно
  is_false = 2 == 3

# Логический оператор и , &&
true && true # => true
true && false # => false
false && true # => false
false && false # => false

# оператор or ( ||)
true || true # => true
true || false # => true
false || true # => true
false || false # => false

# логический оператор not (!)
!true # => false
!false # => true

# Комбинирование логических операторов
# boolean_1 = (3 < 4 || false) && (false || true)
boolean_1 = true

# boolean_2 = !true && (!true || 100 != 5**2)
boolean_2 = false

# boolean_3 = true || !(true || false)
boolean_3 = true


user_input = ""
print "text please... "
user_input = gets.chomp

while user_input.empty? # Возвращает true, если в них нет элементов, если есть даже просто пробел, любой символ будет false
  puts "tray again!"
  user_input = gets.chomp
  user_input.downcase!
end



if user_input.include? "s" # метод include? выполняет поиск в тексте букву s, ответ будет булевое значение true или false
  user_input.gsub!(/s/, "th")

elsif user_input.include?"S"
  user_input.gsub!(/S/, "Th") # метод .gsub!(//) заменяет все найденые S на Th
  
else
  puts "(s) not in text"
end

puts "new text (#{user_input})"