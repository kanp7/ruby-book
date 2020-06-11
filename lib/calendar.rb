require 'date'

def display_calendar
	today = Date.today
	first_day = Date.new(today.year, today.month, 1)
	last_day = Date.new(today.year, today.month, -1)

	first_wday = first_day.wday
	

	days = (1..last_day.day).map{|n| n.to_s.rjust(2)}

	#.to_aを削除
	days = Array.new(first_wday, ' ').push(days).flatten.each_slice(7)

	puts today.strftime("%B %Y").center(21)
	puts "Su Mo Tu We Th Fr St"

	days.each do |week|
		puts week.join(' ')
	end
end


puts display_calendar