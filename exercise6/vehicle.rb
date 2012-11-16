class Vehicle
  attr_accessor:name, :price
  def initialize(name, price)
    @name = name
    @price = 60000
  end
  def display_details()
    puts "Bike is #{@name}  Price: Rs. #{@price}"
  end
end

class Bike < Vehicle
  attr_accessor:price
  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end

  def display_details()
    puts "Bike is #{@name}  Price: Rs. #{@price}  Dealer:#{@dealer}"
  end
end
