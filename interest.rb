class Interest
	@@rate = 50.0
	attr_accessor:principal, :time
	def initialize (principal, time)
		@principal = principal
		@time = time
	end

	def simpleInterest
		return @principal + (@principal * @@rate * @time) / 100
	end

	def compoundInterest
		return @principal * (1 + @@rate / 100) ** @time
	end
end

interest1 = Interest.new(5000, 2)
amount_difference = interest1.compoundInterest - interest1.simpleInterest
puts "Difference in amount calculated compoundedly and simply is #{amount_difference}"
