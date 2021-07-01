# Массив
my_array = [1, 2, 3, 4, 5]

# Доступ по индексу
array = [5, 7, 9, 2, 0]
array[2]
# returns "9", since "9"
# is at index 2

# Массивы массивов называются многомерными массивами
multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

multi_d_array.each { |x| puts "#{x}\n" }
#==> [0, 0, 0, 0]

[0, 0, 0, 0]

[0, 0, 0, 0]

[0, 0, 0, 0]

# Итерация по многомерным массивам
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
s.each do |sub_array|
sub_array.each {|x| puts x}
end

puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ") # метод .split возвращает массив в данном случае слов разделенных где есть пробел

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end

# Метод .split он принимает строку и возвращает массив. 
text.split(",")
# говорит Ruby разделять строку text всякий раз, когда она видит запятую.

#Что вы могли бы сделать, чтобы ваш редактор редактировал слово независимо от того, верхний он или нижний регистр?
#Как вы могли бы заставить вашу программу использовать несколько отдельных слов для УДАЛЕНИЯ?
#Как можно создать новую отредактированную строку и сохранить ее как переменную, а не просто выводить ее на консоль?
puts "Input you text:"
text = gets.chomp.downcase!

puts "Input word for redact:"
redact = gets.chomp.downcase!

new_string = ""

words = text.split(" ")
words.each { |word|
if redact.include? word
  new_string << "REDACTED "
else
  new_string << word + " "
end
 }
print new_string