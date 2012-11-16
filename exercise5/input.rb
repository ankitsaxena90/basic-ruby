require './customer'

customer1 = Customer.new('Ankit',1200)
customer1.deposit(1000)
customer1.withdraw(2500)
customer1.display_details()

customer2 = Customer.new('John')
customer2.deposit(4000)
customer2.withdraw(2500)
customer2.display_details()