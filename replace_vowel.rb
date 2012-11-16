def replace_vowel(input_string)
  vowels = /[aeiou]/i
  puts input_string.gsub(vowels,"*")
end
puts "Enter any string"
input_string = gets.chomp
replace_vowel(input_string)
