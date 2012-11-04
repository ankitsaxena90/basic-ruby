def replaceVowel(input_string)
  #puts vowel_string
  vowels = /[aeiou]/i
  puts input_string.gsub(vowels,"*")
end
puts "Enter any string"
input_string = gets.chomp.downcase
replaceVowel(input_string)
