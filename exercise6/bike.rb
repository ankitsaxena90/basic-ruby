require_relative './vehicle'
class Bike < Vehicle
  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end

  def display_details()
    super()
    puts "Dealer:#{@dealer}"
  end
end