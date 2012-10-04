require './calendar.v2'

month = ARGV[0]
year = ARGV[1]

def single_month_calendar_printer(month, year)
	cal = Calendar.new(month, year)
	cal.get_calendar_for_month_year(month, year)
	puts "Su Mo Tu We Th Fr Sa"
	padding_and_days_of_week = cal.start_day_padding(month, year).to_s + cal.days_of_the_week(month, year)
	puts padding_and_days_of_week.scan(/.{1,21}/)
end
single_month_calendar_printer(month, year)

