def create_hash(input_array)
  occurences = Hash.new(Array.new())
  for i in input_array
    occurences[i.to_s.length] += [i]
  end
  occurences
end
