@occurences = Hash.new(0)
def characterCount(input_string)
	input_string.each_char do |character|
		#puts character
		if character != " " 
			@occurences[character] += 1
		end
	end
end

puts "Enter the input String"
input_string = gets.chomp.downcase
characterCount(input_string)
@occurences.each do |key, value|
	puts "#{key} occured #{value} times"
end
