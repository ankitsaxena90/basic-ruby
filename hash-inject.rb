@occurences = Hash.new(Array.new())
def createHash(input_array)
  input_array.inject([]) do |result, element|
    if element.to_s.length % 2 == 0
      @occurences["even"] += [element] 
    else
      @occurences["odd"] += [element]
    end
 end
end

input_array = ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ'] 
createHash(input_array)
@occurences.each do |key, value|
  puts "#{key} => #{value}"
end
