puts "Input text, please:"
text = gets.chomp.downcase
puts "Input word for redact:"
redact = gets.chomp.downcase

new = [] #создал пустой массив, (можно сделать строку new = "")

words = text.split(" ") # .split() возвращает массив
words.each do |word|
  if redact.include? word
    new << "REDACTED " # << добавление работает так же со строкой
  else
    new << word + " "
  end
end

print new
# ["string ", "REDACTED ", "char ", "array ", "ruby "]
# по итогу мы имеем массив строк(по факту слов) с дополнительным пробелом в конце слова
# если создавать массив можно убрать пробелы сразу еще на стадии if else
puts new.class
# Array

new.map! do |x|
  x.delete(" ") # перебираем и удаляем этот пробел из каждого слова
end

print new
# ["string", "REDACTED", "char", "array", "ruby"]


# итерация по двумерному массиву
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
a = ""
s.each do | sub_array | sub_array.each do | y | a << y + ", " end end

print a