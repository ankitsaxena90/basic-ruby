@regex = /^[qQ]$/
def check_palindrome(input_string)
	if input_string.reverse == input_string
    puts "#{ input_string } is a palindrome."
  else
    puts "#{ input_string } is not a palindrome."
  end
end

while true
	puts "Enter any string (q/Q to exit)"
  input_string = gets.chomp.downcase
  if input_string.match(@regex)
	  break
	else
	check_palindrome(input_string)
  end
end