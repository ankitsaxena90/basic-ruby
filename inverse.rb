class String
  def to_s
    self.swapcase
  end
end
puts "Enter any String"
string = gets.chomp
puts "Inversed String is: #{string.to_s}"