=begin
Идеально! Не стесняйтесь возиться со своим редактором, чтобы увидеть, какие результаты вы получите. Подумайте о следующем:

Что вы могли бы сделать, чтобы ваш редактор редактировал слово независимо от того, верхний он или нижний регистр?
Как вы могли бы заставить вашу программу использовать несколько отдельных слов для УДАЛЕНИЯ?
Как можно создать новую отредактированную строку и сохранить ее как переменную, а не просто выводить ее на консоль?
=end

puts "text please:"
text = gets.chomp
puts "word redact:"
redact = gets.chomp.split
print redact

new = []

words = text.split(" ")
words.each do |word|
  if redact.include?(word)
    #print "REDACTED "
	new << "REDACTED!"
  else
    #print word + " "
	new << word
  end
end

new.each { |word| print "#{word} " }
