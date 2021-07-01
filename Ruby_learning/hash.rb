# Синтаксис хеширования выглядит так:
hash = {
    key1 => value1,
    key2 => value2,
    key3 => value3
  }

my_hash = Hash.new

# Добавление в хеш
pets = Hash.new
pets["Stevie"] = "cat"
# Adds the key "Stevie" with the
# value "cat" to the hash

# Доступ к хеш-значениям
pets = {
    "Stevie" => "cat",
    "Bowser" => "hamster",
    "Kevin Sorbo" => "fish"
  }
   
  puts pets["Stevie"]
  # will print "cat"

# Введение в итерацию
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

# Итерация по хешам
secret_identities = {
    "The Batman" => "Bruce Wayne",
    "Superman" => "Clark Kent",
    "Wonder Woman" => "Diana Prince",
    "Freakazoid" => "Dexter Douglas"
  }
    
  secret_identities.each {|key, walue| puts "#{key}: #{walue}" }

  