def character_count(input_string)
  @occurences = Hash.new(0)
  input_string.each_char do |character|
    regex = /([a-zA-Z])/
    if character.match(regex)
      @occurences[character] += 1
    end
  end
end

puts "Enter the input String"
input_string = gets.chomp.downcase
character_count(input_string)
@occurences.each do |key, value|
  puts "#{key} occured #{value} times"
end
