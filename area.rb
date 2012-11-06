def area(*args)
	case args[0]
	when "circle"
		area =  3.14 * args[1] * args[1]
		puts "Area of Circle is #{area}"

	when "rectangle"
		area = args[1] * args[2]
		puts "Area of Rectangle is #{area}"

	when "triangle"
		area = 0.5 * args[1] * args[2]
		puts "Area of triangle is #{area}"
	end
end


area("circle", 2)
area("rectangle", 2,3)
area("triangle", 4,5)
