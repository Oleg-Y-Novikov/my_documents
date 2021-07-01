# Установка собственного значения по умолчанию
# Теперь, если вы попытаетесь получить доступ к несуществующему ключу my_hash, то получите "Trady Blix"в результате.
my_hash = Hash.new("Trady Blix")

# .object_id Метод получает идентификатор объекта-это как рубин знает два объекта , является ли тем же самым объектом.
puts "string".object_id #17871080 
puts "string".object_id #17870860

puts :symbol.object_id #802268
puts :symbol.object_id #802268

# METOD push, to_sym, intern(тоже самое что и to_sym)
# variant 1
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
# Add your code below!
symbols =[]
strings.each {|el| symbols << el.to_sym} # using <<
print symbols #=> [:HTML, :CSS, :JavaScript, :Python, :Ruby]

# variant 2
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
# Add your code below!
symbols =[]
strings.each {|el| symbols.push(el.intern)} # using push and intern
print symbols #=> [:HTML, :CSS, :JavaScript, :Python, :Ruby]

# sintacsis symbols
numbers = {
    :one => 1,
    :two => "two",
    :three => 3,
  }

# в Ruby 1.9 изменился синтаксис хеширования.
new_hash = { 
    one: 1,
    two: 2,
    three: 3
  }

  #########################################################
  require 'benchmark'

  string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
  symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]
  
  string_time = Benchmark.realtime do
    100_000.times { string_AZ["r"] }
  end
  
  symbol_time = Benchmark.realtime do
    100_000.times { symbol_AZ[:r] }
  end
  
  puts "String time: #{string_time} seconds."
  puts "Symbol time: #{symbol_time} seconds."

  # METOD select
  grades = { alice: 100,
    bob: 92,
    chris: 95,
    dave: 97
  }
   
grades.select { |name, grade| grade <  97 }
# ==> { :bob => 92, :chris => 95 }
   
grades.select { |k, v| k == :alice }
# ==> { :alice => 100 }

# Ruby включает два метода хеширования, .each_key и они .each_value делают именно то, что вы ожидаете:
my_hash = { one: 1, two: 2, three: 3 }
 
my_hash.each_key { |k| print k, " " }
# ==> one two three
 
my_hash.each_value { |v| print v, " " }
# ==> 1 2 3

