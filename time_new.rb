require 'time'

def validateTime(time)
	pattern = /^(\d day & )?([0-1]?\d)|(2?[0-3]):[0-5]?\d:[0-5]?\d$/
	if time.match(pattern)
		return true
	else
		puts "invalid Time"
	end
end

def time_calculation(time,addtime)

	min_in_sec = (time.sec.to_i + addtime.sec.to_i) / 60
	cur_sec = (time.sec.to_i + addtime.sec.to_i) % 60
	
	hor_in_min = (time.min.to_i + addtime.min.to_i + min_in_sec) / 60
	cur_min = (time.min.to_i + addtime.min.to_i + min_in_sec) % 60
	
	cur_hor = (time.hour.to_i + addtime.hour.to_i + hor_in_min) % 24
	day = (time.hour.to_i + addtime.hour.to_i + hor_in_min) / 24
	
	new_time = "#{day} day & #{cur_hor}:#{cur_min}:#{cur_sec}"
	
	if(validateTime(new_time))
		puts new_time
	else
		puts "Invalid Time"
	end
end

puts "Enter current time(HH:MM:SS)"
time = Time.parse(gets.chomp)
time1 = time.strftime("%H:%M:%S")
validateTime(time1)

puts "Enter time to add(HH:MM:SS)"
addtime = Time.parse(gets.chomp)
time2 = addtime.strftime("%H:%M:%S")
validateTime(time2)

time_calculation(time,addtime)