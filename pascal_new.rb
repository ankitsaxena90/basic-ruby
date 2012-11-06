def factorial(num)
  factorial = 1
  while num > 0 do
    factorial *= num
    num -= 1
  end
  factorial
end

def pascal(no_of_lines)
  no_of_lines.times do |i|
    yield(i)
    puts "\n"
  end
end

puts "Enter the number of lines for Pascal Triangle"
no_of_lines = gets.chomp

pascal(no_of_lines.to_i) do |i|
  (i+1).times do |j|
    print ( factorial(i) / ( factorial(j) * factorial(i-j) ) )
    print " "
  end
end