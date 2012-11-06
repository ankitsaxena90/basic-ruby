def factorial(number)
  (1..number).inject { |fact, var| fact * var }
end

puts "Enter any number"
input_number = gets.chomp
digit_pattern = /^\d+$/
if input_number.match(digit_pattern)
  result = factorial(input_number.to_i)
  puts "Factorial of #{input_number} is #{result}"
else
  puts "Invalid input enetered"
end
