$result_array = []
class Array
  def power!(exponent)
    self.each {|n| $result_array.push(n ** exponent) }
    $result_array
  end
end

array1 = [1, 2, 3, 4]
array1.power!(3)
puts $result_array.inspect
