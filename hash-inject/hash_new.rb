require_relative './array-hash'

def generateHash(input_array)
	hash = createHash(input_array)
	container_hash = {}
  container_hash['even'] = []
  container_hash['odd'] = []
  group_hash = hash.inject(container_hash) do |container_hash, element|
    if element[0].to_i.even?
      container_hash['even'] << element[1]
    else
      container_hash['odd'] << element[1]
    end
    container_hash
  end
end


input_array = ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ'] 
puts generateHash(input_array)
