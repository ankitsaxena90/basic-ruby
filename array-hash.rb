def create_hash(input_array)
  occurences = Hash.new(Array.new())
  for i in input_array
    occurences[i.to_s.length] += [i]
  end
  occurences
end

input_array = ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ'] 
arr = create_hash(input_array)
arr.each do |key, value|
  puts "#{key} => #{value}"
end

