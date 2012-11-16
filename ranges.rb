def character_count(input_string)
  upcase_count = 0
  downcase_count = 0
  digits_count = 0
  special_char_count = 0
  input_string.each_char do |character|
    case character
      when ('a'..'z')
        downcase_count += 1
      when ('A'..'Z') 
        upcase_count += 1
      when ('0'..'9')
        digits_count += 1
      else
        special_char_count += 1
    end  
  end
  puts "Number of Upcase characters are #{upcase_count}"
  puts "Number of Downcase characters are #{downcase_count}"
  puts "Number of Digits are #{digits_count}"
  puts "Number of Special Characters are #{special_char_count}"
end

puts "Enter any string"
input_string = gets.chomp
character_count(input_string)
