def factorial(num)
  raise ArgumentError, 'Try with a positive value'  if num < 0
  return 1 if num == 0
  num * factorial(num - 1)
end

begin puts factorial(-5)
rescue ArgumentError => ex
  puts ex
end