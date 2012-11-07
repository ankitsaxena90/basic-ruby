class Array
  def reverse_iterate
    i = self.length - 1
    until i < 0
      yield self[i]
      i -=1 
    end
  end
end

[2,4,6,8].reverse_iterate { |i| print "#{i} "}
puts
