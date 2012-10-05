require './calendar.v2'
def cal_printer
if ARGV.length == 2
	month = ARGV[0]
	year = ARGV[1]
	cal = Calendar.new(month, year)
	puts cal.single_month(month, year).join("\n")
else
	month = 1
	year = ARGV[0]
	puts "                               "+year
	puts cal.full_year(month, year).join("\n")
end
end

public
def single_month(month, year)
	cal = Calendar.new(month, year)
	output = []
	output << cal.get_calendar_for_month_year(month, year)
	output << "Su Mo Tu We Th Fr Sa"
	padding_and_days_of_week = cal.start_day_padding(month, year).to_s + cal.days_of_the_week(month, year)
	output << padding_and_days_of_week.scan(/.{1,21}/)
	output.flatten
end

def full_year(month, year)
	cal = Calendar.new(month, year)
	m1 = cal.single_month(month, year)
	m2 = cal.single_month(month+1, year)
	m3 = cal.single_month(month+2, year)
	8.times do |i| 
	puts m1[i]+m2[i]+m3[i]
end
end

cal_printer

	




# def full_year_calendar_printer(month, year)
# 	cal = Calendar.new(month, year)
# 	cal.get_calendar_for_month_year(month, year)
# 	puts "Su Mo Tu We Th Fr Sa"
# 	padding_and_days_of_week = cal.start_day_padding(month, year).to_s + cal.days_of_the_week(month, year)
# 	puts padding_and_days_of_week.scan(/.{1,21}/)
# end

# full_year_calendar_printer.()
# end#Month_Calendar

# class Year_Calendar
# month = 
# year = [0]
# end#Year_Calendar



