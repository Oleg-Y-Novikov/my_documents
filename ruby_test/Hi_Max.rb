puts("Hello my old friend!\nHow are you?\nPlease enter a word:\nGood, Very well, Poorly")
response = gets.chomp()

def answer(response)
  case response
    when 'Good'
        puts("I wrote the code well - you can rest")
    when 'Very well'
        puts("Excellent! In honor of this, you can have a glass of wine!")
    when 'Poorly'
        puts("As the Inta gangsters say - 'Whoever beats whom, he will beat down' do not give up!")
    else
        puts("SIKN waiting for me tonight...")
    end
end
puts answer(response)
puts ("Have a good evening, say hello to Ira, Vovan and little Mityai!") 