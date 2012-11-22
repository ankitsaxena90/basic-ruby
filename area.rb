def area(*args)
  case args.length
  when 1
    area =  3.14 * args[0] * args[0]
    puts "Area of Circle is #{area}"

  when 2
    area = args[0] * args[1]
    puts "Area of Rectangle is #{area}"

  when 3
    s = args[0] + args[1] + args[2] / 2.0
    area = Math.sqrt(s * (s - args[0]) * (s - args[1]) * (s-args[2])).round(2)
    puts "Area of triangle is #{area}"
  end
end


area(2)
area(2,3)
area(3,4,5)
