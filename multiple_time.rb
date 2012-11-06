require 'time'
$time = 0
$day = 0
$final_time

def validateTime(time)
	pattern = /^(\d day & )?([0-1]?\d)|(2?[0-3]):[0-5]?\d:[0-5]?\d$/
	if time.match(pattern)
		puts "Valid date"
	else
		puts "Invalid Time"
	end
	return true
end

def time_calculation(time,addtime)

	min_in_sec = (time.sec.to_i + addtime.sec.to_i) / 60
	cur_sec = (time.sec.to_i + addtime.sec.to_i) % 60
	
	hor_in_min = (time.min.to_i + addtime.min.to_i + min_in_sec) / 60
	cur_min = (time.min.to_i + addtime.min.to_i + min_in_sec) % 60
	
	cur_hor = (time.hour.to_i + addtime.hour.to_i + hor_in_min) % 24
	$day += (time.hour.to_i + addtime.hour.to_i + hor_in_min) / 24
	
	new_time = "#{$day} day & #{cur_hor}:#{cur_min}:#{cur_sec}"
	
	if(validateTime(new_time))
		$final_time =  new_time
		$time = Time.parse(new_time)
	else
		puts "Invalid Time"
	end
end

puts "Enter current time(HH:MM:SS)"
$time = Time.parse(gets.chomp)
time1 = $time.strftime("%H:%M:%S")
validateTime(time1)

puts "Enter the limit for SUM TIME"
limit = gets.chomp

addtime = []
limit.to_i.times do |i|
	puts "Enter the time to add(HH:MM:SS)"
	addtime.push(Time.parse(gets.chomp))
	time2 = addtime[i].strftime("%H:%M:%S")
	validateTime(time2)
end
addtime.each_with_index { |a, i| time_calculation($time, addtime[i])}
	puts "Final Time is"
	puts $final_time