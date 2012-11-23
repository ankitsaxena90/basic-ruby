require 'time'

def validate_time(time)
  pattern = /^(\d day & )?([0-1]?\d)|(2?[0-3]):[0-5]?\d:[0-5]?\d$/
  if time.match(pattern)
    return true
  else
    puts "Invalid Time"
    exit(0)
  end
end

def time_calculation(addTime)
  day = 0
  cur_hour = 0
  cur_min = 0
  cur_sec = 0

  addTime.length.times do |i|
    temp_time = addTime[i]

    min_in_sec = (cur_sec + temp_time.sec.to_i) / 60
    cur_sec = (cur_sec + temp_time.sec.to_i) % 60
    
    hour_in_min = (cur_min + temp_time.min.to_i + min_in_sec) / 60
    cur_min = (cur_min + temp_time.min.to_i + min_in_sec) % 60

    day += (cur_hour + temp_time.hour.to_i + hour_in_min) / 24
    cur_hour = (cur_hour + temp_time.hour.to_i + hour_in_min) % 24 
  end
  new_time = "#{day} day & #{cur_hour}:#{cur_min}:#{cur_sec}"
end

def result(addTime)
  final_time = time_calculation(addTime)
  puts "Final Time is :#{final_time}" if validate_time(final_time)
end

def take_input
  puts "Enter the limit(Number of times you want to add TIME values) :"
  limit = gets.chomp.to_i
  addTime = []
  limit.times do |i|
    puts "Enter the time to add(HH:MM:SS)"
    addTime.push(Time.parse(gets.chomp))
    time2 = addTime[i].strftime("%H:%M:%S")
    validate_time(time2)
  end
  result(addTime)
end

take_input

