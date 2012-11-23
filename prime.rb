def prime(n)
  num_array = Array.new(n, true)
  num_array[0] = false
  num_array.each_with_index do |num, i|
    if num
      print i+1, " "
      (2*i+1).step(n, i+1) { |index|
        num_array[index] = false
      }
    end
  end
end

puts "Prime Numbers are"
prime(10)
puts
