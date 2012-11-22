def factorial(num)
  raise ArgumentError, 'Argument is negative' if num < 0
  return 1 if num == 1
  num * factorial(num - 1)
end

begin puts factorial(-5)
rescue ArgumentError => ex
  puts "Try again with a positive value"
end