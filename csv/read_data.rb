def read_from_file(file_name)
  emp_hash =  Hash.new(Array.new)
  read_file = File.open(file_name, "r")
  read_file.each_line { |line| 
    fields = line.split(",")
    #puts "#{fields[0]} #{fields[1]} #{fields[2]}"
    
    name = fields[0]
    emp_id = fields[1]
    role = fields[2]
    emp_hash[role] += ["#{name} (EmpId: #{emp_id})"]
    write_to_file(emp_hash)
  }
end

def write_to_file (emp_hash)
  write_file = File.open("output.csv","w")
  emp_hash.each_pair { |name, val| 
    write_file.puts name 
    write_file.puts val
  }
end

read_from_file("employee_data.csv")