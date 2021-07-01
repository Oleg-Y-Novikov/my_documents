# Цикл "Пока" while
counter = 1
while counter < 11
  puts counter
  counter = counter + 1 # бесконечный цикл если забыть увеличивать счетчик!!!
end

# Цикл "до" until до тех пор, пока...
counter = 1
until counter > 10
  puts counter
  counter += 1
end

# Цикл For
for num in 1...10 # Инклюзивные и эксклюзивные диапазоны (.. включает последнее значение) (... не включает последнее знчение)
    puts num
  end
#==> 1 2 3 4 5 6 7 8 9

# итератор - это loop метод.
i = 20
loop do
  i -= 1
  print "#{i} "
  break if i <= 0
end

# next Можно использовать ключевое слово , чтобы пропустить определенные шаги в цикле.
i = 20
loop do
  i -= 1
  next if i % 2 != 0
  print "#{i}"
  break if i <= 0
end

# Итератор .each метод, который может применять выражение к каждому элементу объекта по одному. Синтаксис выглядит так:
object.each { |item| 
    # Do something 
  }

object.each do |item| 
    # Do something 
  end

  array = [1,2,3,4,5]
  y = []
  array.each { |x| x += 10 
  y << x }
   p array
   p y

   # Итератор .times
   10.times { print "Chunky bacon!" }