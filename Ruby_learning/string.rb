# METOD .length
"I love espresso".length
# ==> 15

# METOD .revers
"Eric".reverse
# ==> "cirE"

# METOD .upcase и .downcase
puts "eric".upcase    # ==> ERIC
puts "ERIC".downcase    # ==> eric

name = "Novikov"
p name.downcase.reverse.upcase #==> "VOKIVON"

Многострочные комментарии
=begin
I'm a comment!
I don't need any # symbols.
=end

print "What's your first name? "
first_name = gets.chomp #==> получение ввода пользователя
first_name.capitalize! #==> .capitalize! делает первую букву заглавной остальные строчные

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "What city are you from? "
city = gets.chomp
city.capitalize!

print "What state or province are you from? "
state = gets.chomp
state.upcase!  #==> все буквы в верхнем регистре

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!" #чтобы было в ковычках state \"#{state}\""

#############################################################
print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s" # метода Ruby,который оценивает,true находит ли он то,что ищет,и в false противном случае. 
                           # Как правило, методы Ruby, которые заканчиваются ? на логические значения true или false.
    user_input.gsub!(/s/, "th") # меняет s на th 
else
  puts "Nothing to do here!"
end
  
puts "Your string is: #{user_input}"