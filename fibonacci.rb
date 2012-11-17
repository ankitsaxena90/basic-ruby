def fibonacci(limit)
  second = first = 1
  print first, " ", second, " "
  until first + second > limit do
    yield(first,second)
    first , second = second, first + second
  end
end


fibonacci(1000) { |n1,n2| print n1 + n2, " " }
puts
