require_relative './vehicle'

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

