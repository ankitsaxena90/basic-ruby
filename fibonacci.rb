def fibonacci(limit)
  second = first = 1
  print 1, " "
  until second > limit do
    first , second = second, yield(first, second)
    print first, " "
  end
end


fibonacci(1000) { |n1,n2| n1 + n2}
puts