$count = 0
def search(input_string, input_word)
	search_pattern = /#{input_word}/i
	string =  input_string.split(" ")
	arr_string = string.to_a
	puts input_string.gsub(search_pattern, "(#{input_word})")
	string.each do |str| 
		if str.match(search_pattern)
			$count += 1
		end
	end
	puts "Total Occurences found: #{$count}"
end

puts "Enter any string"
input_string = gets.chomp
puts "Enter the word to be searched"
input_word = gets.chomp
search(input_string, input_word)