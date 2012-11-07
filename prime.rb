require 'mathn'
def prime(limit)
  puts "The prime numbers in range of 1 to #{limit} are:"
  2.step(limit.to_i) do |num|
    puts num if Prime.prime?(num)
  end	
end

prime(10)
