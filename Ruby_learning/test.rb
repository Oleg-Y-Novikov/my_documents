class Computer
  @@users = {}
    def initialize(username, password)
      @username = username
      @password = password
      @files = {}
      @@users[username] = password
    end
    def create(filename)
      time = Time.now
      if @files.include?(filename)
        puts "File #{filename} already exists!"
      else
        @files[filename] = time
        puts "File #{filename} has ben created users #{@username} in #{time}"
      end
    end
    def Computer.get_users
      @@users
    end
    def delete(filename)
      if @files[filename].nil?
        puts "File #{filename} no found!"
      else
        @files.delete(filename)
        puts "File #{filename} has ben removed!"
      end
    end
    def updated(filename)
      time = Time.now
      if @files[filename].nil?
        puts "File #{filename} no found!"
      else
        @files[filename] = time
        puts "File #{filename} has ben updated users #{@username} in #{time}"
      end
    end
    def display_files
      @files.each_key do |file|
        puts file
      end
    end
  end
  
  my_computer = Computer.new("Oleg", "12345")
  puts Computer.get_users
  my_computer.create("text.txt")
  my_computer.create("text1.txt")
  my_computer.create("text2.txt")
  my_computer.updated("text.txt")
  my_computer.delete("text.txt")
  my_computer.display_files
