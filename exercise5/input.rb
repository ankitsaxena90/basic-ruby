require './customer'

customer1 = Customer.new('Ankit')
customer1.deposit(2000)
customer1.withdraw(1500)
customer1.displayDetails()

customer2 = Customer.new('jsnkn')
customer2.deposit(4000)
customer2.withdraw(2500)
customer2.displayDetails()