def search(input_string, input_word)
  search_pattern = /#{input_word}/i
  count = 0
  puts input_string.gsub(/#{input_word}/i) {|match| 
    count += 1
    "(#{match})"
  }
  puts "Total Occurences found: #{count}"
end

puts "Enter any string"
input_string = gets.chomp
puts "Enter the word to be searched"
input_word = gets.chomp
search(input_string, input_word)
