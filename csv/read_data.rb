emp_hash =  Hash.new(Array.new)
read_file = File.open("employee_data.csv", "r")
read_file.each_line { |line| 
  fields = line.split(",")
  #puts "#{fields[0]} #{fields[1]} #{fields[2]}"
  
  name = fields[0]
  emp_id = fields[1]
  role = fields[2]
  emp_hash[role] += ["#{name} (EmpId: #{emp_id})"]
}
write_file = File.open("output.csv","w")
emp_hash.each_pair { |name, val| 
  write_file.puts name 
  write_file.puts val
}
