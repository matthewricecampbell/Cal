require './calendar.v2'
def cal_printer
if ARGV.length == 2
	month = ARGV[0]
	year = ARGV[1]
	cal = Calendar.new(month, year)
	puts cal.single_month_for_single_month(month, year).join("\n")
else
	month = 1
	year = ARGV[0]
	puts "                               "+year
	puts cal.full_year_a(month, year)
	puts cal.full_year_b(month, year)
	puts cal.full_year_c(month, year)
	puts cal.full_year_d(month, year)
end
end

public
def single_month_for_single_month(month, year)
	cal = Calendar.new(month, year)
	output = []
	output << cal.get_calendar_for_month(month, year)
	output << "Su Mo Tu We Th Fr Sa"
	padding_and_days_of_week = cal.start_day_padding(month, year).to_s + cal.days_of_the_week(month, year)
	output << padding_and_days_of_week.scan(/.{1,21}/)
	output.flatten
end

public
def single_month_for_full_year(month, year)
	cal = Calendar.new(month, year)
	output = []
	output << cal.get_calendar_for_month_year(month, year)
	output << "Su Mo Tu We Th Fr Sa "
	@padding_and_days_of_week = cal.start_day_padding(month, year).to_s + cal.days_of_the_week(month, year)
	output << @padding_and_days_of_week.scan(/.{1,21}/)
	output.flatten
end

def full_year_a(month, year)
	cal = Calendar.new(month, year)
	m1 = cal.single_month_for_full_year(month, year)
	m2 = cal.single_month_for_full_year(month+1, year)
	m3 = cal.single_month_for_full_year(month+2, year)
	    if m1.length < 8
			m1 << " "*21
			m1.flatten
		end
	
		if m2.length < 8
			m2 << " "*21
			m2.flatten
		end
		 
		if m3.length < 8
			m3 << " "*21
			m3.flatten
		end
	8.times do |i| 
	puts  m1[i].ljust(21)+"  "+m2[i].ljust(21)+" "+m3[i].ljust(21)
end
end
def full_year_b(month, year)
	cal = Calendar.new(month, year)
	m4 = cal.single_month_for_full_year(month+3, year)
	m5 = cal.single_month_for_full_year(month+4, year)
	m6 = cal.single_month_for_full_year(month+5, year)
	if m4.length < 8
			m4 << " "*21
			m4.flatten
		end
	
		if m5.length < 8
			m5 << " "*21
			m5.flatten
		end
		 
		if m6.length < 8
			m6 << " "*21
			m6.flatten
		end
	8.times do |i| 
	puts m4[i].ljust(21)+"  "+m5[i].ljust(21)+"  "+m6[i].ljust(21)
end
end
def full_year_c(month, year)
	cal = Calendar.new(month, year)
	m7 = cal.single_month_for_full_year(month+6, year)
	m8 = cal.single_month_for_full_year(month+7, year)
	m9 = cal.single_month_for_full_year(month+8, year)
	if m7.length < 8
			m7 << " "*21
			m7.flatten
		end
	
		if m8.length < 8
			m8 << " "*21
			m8.flatten
		end
		 
		if m9.length < 8
			m9 << " "*21
			m9.flatten
		end
	8.times do |i| 
	puts m7[i].ljust(21)+"  "+m8[i].ljust(21)+"  "+m9[i].ljust(21)
end
end
def full_year_d(month, year)
	cal = Calendar.new(month, year)
	m10 = cal.single_month_for_full_year(month+9, year)
	m11 = cal.single_month_for_full_year(month+10, year)
	m12 = cal.single_month_for_full_year(month+11, year)
	if m10.length < 8
			m10 << " "*21
			m10.flatten
		end
	
		if m11.length < 8
			m11 << " "*21
			m11.flatten
		end
		 
		if m12.length < 8
			m12 << " "*21
			m12.flatten
		end
	8.times do |i| 
	puts m10[i].ljust(21)+"  "+m11[i].ljust(21)+"  "+m12[i].ljust(21)
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



