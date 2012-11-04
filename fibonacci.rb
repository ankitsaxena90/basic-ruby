def fibonacci(max)
  first = 0
  second = 1
  until first > max do 
    yield first
    first , second = second, first + second
  end
end
fibonacci(1000) { |f| puts f }
