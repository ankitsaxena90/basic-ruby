@occurences = Hash.new(Array.new())
def power(input_array)
	for i in input_array
			@occurences[i.to_s.length] += [i]
	end
end

input_array = ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ'] 
power(input_array)
@occurences.each do |key, value|
  puts "#{key} => #{value}"
end

