class Name
	def initialize(firstname, lastname)
		raise "Null Value entered" if firstname.length == 0 || lastname.length == 0
		raise "First letter of first name is not Capital" unless (firstname[0] =~ /[A-Z]/) != nil
		print @firstname = firstname, " "
		puts @lastname = lastname
	end
end

name_obj1 = Name.new("john","Thomas")
name_obj2 = Name.new("","")
