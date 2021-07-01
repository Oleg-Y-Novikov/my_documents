def prime(n)
    puts "That's not an integer." unless n.is_a? Integer
    is_prime = true
    for i in 2..n-1
      if n % i == 0
        is_prime = false
      end
    end
    if is_prime
      puts "#{n} is prime!"
    else
      puts "#{n} is not prime."
    end
  end
  
  prime(2)
  prime(9)
  prime(11)
  prime(51)
  prime(97)

  # metods array
  def array_of_10
    puts (1..10).to_a
  end
  
  array_of_10

  # Аргументы Splat *
  def what_up(greeting, *friends) # * сообщает программе, что метод может получать один или несколько аргументов.
    friends.each { |friend| puts "#{greeting}, #{friend}!" }
  end
  
  what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

  # return
  def double(n)
    return n * 2
  end
   
  output = double(6)
  output += 2
  puts output

  # БЛОКИ И МЕТОДЫ
  # method that capitalizes a word
def capitalize(string) 
    puts "#{string[0].upcase}#{string[1..-1]}"
  end
  
  capitalize("ryan") # prints "Ryan"
  capitalize("jane") # prints "Jane"
  
  # block that capitalizes each string in the array
  ["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"

  # СОРТИРОВКА
  my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]
# Call the sort! method on my_array below.
# my_array should then equal [1, 2, 3, 4, 5, 6, 7, 8, 9].
p my_array.sort!

# Комбинированный оператор сравнения <=> Он возвращается, 0если первый операнд (сравниваемый элемент) равен второму, 1если первый операнд больше второго и -1если первый операнд меньше второго
book_1 = "A Wrinkle in Time"

book_2 = "A Brief History of Time"
p book_1 <=> book_2

###############
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
# To sort our books in ascending order, in-place
p books.sort! { |firstBook, secondBook| firstBook <=> secondBook }
# Sort your books in descending order, in-place below
p books.sort! {|firstBook, secondBook| secondBook <=> firstBook}

# метод сортировки
def alphabetize(arr, rev=false)
    if rev
      arr.sort { |item1, item2| item2 <=> item1 }
    else
      arr.sort { |item1, item2| item1 <=> item2 }
    end
  end
  
  books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]
  
  puts "A-Z: #{alphabetize(books)}"
  puts "Z-A: #{alphabetize(books, true)}"

  ############
  def alphabetize(arr, rev=false)
    arr.sort!
    if rev
    arr.reverse!
    else
    arr
    end
  end
  numbers = [5, 1, 3, 8]
  p alphabetize(numbers, rev=false)
  p alphabetize(numbers, rev=true)

  