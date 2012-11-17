class Interest
	@@rate = 50.0
	def initialize (principal, time)
		@principal = principal
		@time = time
	end

	def simple_interest
		return @principal + (@principal * @@rate * @time) / 100
	end

	def compound_interest
		return @principal * (1 + @@rate / 100) ** @time
	end
end

interest1 = Interest.new(5000, 2)
amount_difference = interest1.compound_interest - interest1.simple_interest
puts "Difference in amount calculated compoundedly and simply is #{amount_difference}"
