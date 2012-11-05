class Customer
	@@account_no = 0
	attr_accessor:name
	def initialize(name)
		@name = name;
		@@account_no += 1
		@account_no = @@account_no
		@balance = 1000
	end

	def deposit(amount)
		@balance += amount
	end

	def withdraw(amount)
		@balance -= amount
	end
	
	def displayDetails
		puts "Name: #{@name}  Account Number: #{@account_no}  Balance: #{@balance}"
	end
end
