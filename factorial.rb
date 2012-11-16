def factorial(number)
  (1..number).inject { |fact, var| fact * var }
end

def check_digit(input_number) 
  digit_pattern = /^\d+$/
  if input_number.match(digit_pattern)
    result = factorial(input_number.to_i)
    puts "Factorial of #{input_number} is #{result}"
  else
    puts "Invalid input enetered"
  end
end
puts "Enter any number"
input_number = gets.chomp
check_digit(input_number)


