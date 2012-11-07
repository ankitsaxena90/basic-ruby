class Name
	attr_accessor:firstname, :lastname
	def initialize(firstname, lastname)
		raise "Null Value entered" if firstname.length == 0 || lastname.length == 0
		raise "First letter of first name is not Capital" unless (firstname[0] =~ /[A-Z]/) != nil
		puts @firstname = firstname
		puts @lastname = lastname
	end
end

name_obj = Name.new("","")
