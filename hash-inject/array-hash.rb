@occurences = Hash.new(Array.new())
def createHash(input_array)
  for i in input_array
    @occurences[i.to_s.length] += [i]
  end
  @occurences
end
