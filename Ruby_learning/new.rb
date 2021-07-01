class Account
  attr_reader :name, :balance
  
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  private
  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
  public
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      return puts "There are not enough funds in your account. Balance: $#{@balance}." if @balance < amount
      @balance -= amount
      puts "Withdrew $#{amount}. New balance: $#{@balance}."
    else 
      puts pin_error
    end
  end

  def deposit(pin_number, amount)
    if pin_number == pin
      @balance += amount
      puts "Submitted $#{amount}. New balance: $#{@balance}."
    else 
      puts pin_error
    end
  end

end
  
class SaveAccount < Account
    private
    def pin
      @pin = 55555
    end
end

  checking_account = Account.new("Stiv", 500_000)
  puts checking_account.name
  checking_account.deposit(1234, 500_000)
  checking_account.withdraw(1234, 500_000)
  checking_account.withdraw(1234, 500_000)
  checking_account.withdraw(1234, 500_000)

  save = SaveAccount.new("Bob", 250_000)
  puts save.name
  save.deposit(55555, 100_000)
  save.withdraw(55555, 200_000)
  save.withdraw(55555, 200_000)


 
