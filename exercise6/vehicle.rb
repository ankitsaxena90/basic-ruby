class Vehicle
  attr_accessor:name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
  def display_details()
    puts "Bike is #{@name}  Price: Rs. #{@price}"
  end
end

