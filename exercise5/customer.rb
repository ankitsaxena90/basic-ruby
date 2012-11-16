class Customer
  UNSPECIFIED = Object.new
  @@account_no = 0
  def initialize(name, balance = UNSPECIFIED)
    @name = name;
    @@account_no += 1
    @account_no = @@account_no
    if balance.equal?(UNSPECIFIED)
      @balance = 1000
    else
      @balance = balance
    end
	end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount > @balance
      puts "Balance is not sufficient. Need more Rs. #{amount - @balance}"
    else
      @balance -= amount
    end
  end
	
  def display_details
    puts "Name: #{@name}  Account Number: #{@account_no}  Balance: #{@balance}"
  end
end
