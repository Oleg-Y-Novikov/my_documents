# print "What's your first name? "
# first_name = gets.chomp
# first_name.capitalize!

# print "What's your last name? "
# last_name = gets.chomp
# last_name.capitalize!

# print "What city are you from? "
# city = gets.chomp
# city.capitalize!

# print "What state or province are you from? "
# state = gets.chomp
# state.upcase!

# puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"





# print "Integer please: "
# user_num = Integer(gets.chomp)

# if user_num < 0
#   puts "You picked a negative integer!"
# elsif user_num > 0
#   puts "You picked a positive integer!"
# else
#   puts "You picked zero!"
# end



#  hungry = false
#    unless hungry
#   puts "I'm writing Ruby programs!"
#   else
#   puts "Time to eat!"
#   end

#  tuesday = true
#  #saturday = true
#  unless tuesday
#    puts "Сегодня Среда"
#  else #saturday
#    puts "Сегодня вторник"
#  end

# i = 20
# loop do
#   i -= 1
#   print "#{i},"
#   break if i <= 0
# end


#  i = 1
#  until i == 50 do
#    print i
#    i += 9
#  end

# a = "Ruby!"
# loop do
# print (a)
# break if a == 30
# end

# puts "Text to search through: "
# text = gets.chomp
# puts "Word to redact: "
# redact = gets.chomp

# words = text.split(" ")

# words.each do |word|
#   if word != redact
#     print word + " "
#   else
#     print "REDACTED "
#   end
# end


# puts "Text please: "
# text = gets.chomp

# words = text.split(" ")
# frequencies = Hash.new(0)
# words.each { |word| frequencies[word] += 1 }
# frequencies = frequencies.sort_by {|a, _| a.size }.to_h
# print frequencies


# s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
# s.each do |sub_array| 
# sub_array.each do |w| 
# puts w
# end
# end


# pets = {}
# pets["Stevie"] = "cat"
# pets["wwww"] = "ww"
# pets["qqq"] = "qqqq"
# print pets

# print "Pleas the enter a thtring: " 
# user_input = gets.chomp
# user_input.downcase!

# if user_input.include? "s"
# user_input.gsub!(/s/, "th")
# end
# puts user_input

#  my_2d_array = [[1,2,3,4],["oleg", "katya"],[true, false, :w],[45,5]]
#  my_2d_array.each { |x| puts "#{x}"}



#  multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
#  multi_d_array.each { |x| puts "#{x}\n" }
# puts multi_d_array



# my_hash = { "name" => "Eric",
#     "age" => 26,
#     "hungry?" => true
#     }
    
#     puts my_hash["name"]
#     puts my_hash["age"]
#     puts my_hash["hungry?"]

# oleg = Hash.new
# oleg[1] = "Katy"
# oleg["2"] = "home"

# puts oleg["2"]


# friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

# family = { "Homer" => "dad",
# "Marge" => "mom",
# "Lisa" => "sister",
# "Maggie" => "sister",
# "Abe" => "grandpa",
# "Santa's Little Helper" => "dog"
# }

# friends.each { |x| puts "#{x}" }
# family.each { |x, y| puts "#{x}: #{y}" }


# s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
# s.each do |sub_array| 
# puts sub_array.to_a
# end


# def prime(n)
#     puts "That's not an integer." unless n.is_a? Integer
#     is_prime = true
#     for i in 2..n-1
#       if n % i == 0
#         is_prime = false
#       end
#     end
#     if is_prime
#       puts "#{n} is prime!"
#     else
#       puts "#{n} is not prime."
#     end
# end
    
#     prime(2)
#     prime(9)
#     prime(11)
#     prime(51)
#     prime(97)


  #  def by_three?(number)
  #    return "Not integer, please enter an integer:" unless number.is_a? Integer

  #     if number % 3 == 0
  #        true
  #      else 
  #        false
  #      end
  #  end
#
#  def by_three_new?(number)
#      return "Not integer, please enter an integer:" unless number.is_a? Integer

#       number % 3 == 0

#  
#    end
# #
# #  g = by_three?(3)
#   puts by_three_new?(5.5)

# def capitalize(string) 
#   puts "#{string[0].upcase}#{string[1..-1]}"
# end

# capitalize("ryan") # prints "Ryan"
# capitalize("jane") # prints "Jane"

  #["ryan", "jane"].each {|x| puts "#{x.upcase[0]}#{x[1..-1]}"}


#  a = ["ryan and jane"]
#    "ryan and jane".each_char do |x| 
#      puts x.upcase
#    end 

  # def capitalize(string) 
  #   puts "#{string[0].upcase}#{string[1..-1]}"
  #   end
    
  #   capitalize("ryan and jane")

  #[1, 2, 3, 4, 5].each { |i| puts i + 100 }

  # def alphabetize(books, rev=false)
  #   if rev
  #   books.sort { |item1, item2| item2 <=> item1 }
  #   else
  #   books.sort { |item1, item2| item1 <=> item2 }
  #   end
  #   end
    
  #   books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]
    
  #   puts alphabetize(books, true)


  # matz = { "First name" => "Yukihiro",
  #   "Last name" => "Matsumoto",
  #   "Age" => 47,
  #   "Nationality" => "Japanese",
  #   "Nickname" => "Matz"
  # }
  
  # matz.each { |key, value|
  #     puts key
  # }


  movies = {
    Memento: 3,
    Primer: 4,
    Ishtar: 1
  }.each { |x, y| puts "#{x} ""#{y}" }
  
  puts "What would you like to do?"
  puts "-- Type 'add' to add a movie."
  puts "-- Type 'update' to update a movie."
  puts "-- Type 'display' to display all movies."
  puts "-- Type 'delete' to delete a movie."
  
  while
    choice = gets.chomp.downcase
    
  case choice
  when 'add'
    puts "What movie do you want to add?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "What's the rating? (Type a number 0 to 4.)"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been added with a rating of #{rating}."
    else
      puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
    
  when 'update'
    puts "What movie do you want to update?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Movie not found!"
    else
      puts "What's the new rating? (Type a number 0 to 4.)"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_f
      puts "#{title} has been updated with new rating of #{rating}."
    end
  when 'display'
    movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when 'delete'
    puts "What movie do you want to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Movie not found!"
    else
      movies.delete(title.to_sym)
      puts "#{title} has been removed."
    end
  else
    puts "Sorry, I didn't understand you."
  end
  movies.each { |x, y| puts "#{x} ""#{y}" }
  end
  






  class String
    def toJadenCase
      string_array = self.split(" ")
      string_array.map!(&:capitalize)
      string_array.join(" ")
    end
  end
   
    "How can mirrors be real if our eyes aren't real".toJadenCase
  

    