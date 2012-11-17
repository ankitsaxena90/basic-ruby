class Array
  def power(exponent)
    result_array = []
    self.each {|n| result_array.push(n ** exponent) }
    result_array
  end
end

array1 = [1, 2, 3, 4]
puts array1.power(3)

