
def get_month_name(month_number)
    month_number = month_number.to_i
	month_number_hash = {01=>"Jan", 02=>"Feb", 03=>"Mar", 04=>"Apr", 05=>"May", 06=>"Jun", 07=>"Jul", 8=>"Aug", 9=>"Sept", 10=>"Oct", 11=>"Nov", 12=>"Dec"}
	month_number_hash[month_number]
end
def number_of_days_in_month(month_number)
	month_number = month_number.to_i
	days_in_month_hash = {01 => 31, 02 => 28, 03 => 31, 04 => 30, 05 => 31, 06 => 30, 07 => 31, 8 => 30, 9 => 31, 10 => 30, 11 => 31, 12 => 30}
    days_in_month_hash[month_number]
end
def day_of_the_week_printer(month)
	output = ""
	1.upto(number_of_days_in_month(month)){|number| output = output + number.to_s}
	return output
end
def zeller_month_number(month_number)
	month_number = month_number.to_i
	converter_hash = {01=>13, 02=>14, 03=>3, 04=>4, 05=>5, 06=>6, 07=>7, 8=>8, 9=>9, 10=>10, 11=>11, 12=>12}
	converter_hash[month_number]
end
def leap_year_offset(year) 
 (year.to_i/4).floor+6*(year.to_i/100).floor+(year.to_i/400).floor
end

def march_offset(month)
 ((zeller_month_number(month.to_i)+1)*26/10).floor 
end
def start_day_of_week(month, year)
 day_of_month = 1
 (day_of_month+march_offset(month)+year.to_i+leap_year_offset(year))%7
end


def get_calendar_for_month_year(month, year)
  puts "    "+get_month_name(month)+" "+year
end
#Sat=0 ...Fri=6
def start_day_spacing(month, year)
  if start_day_of_week(month, year) == 0
  	x = "..................."
  elsif start_day_of_week(month, year) == 1
  	x = "."
  elsif start_day_of_week(month, year) == 2
  	x = "...."
  elsif start_day_of_week(month, year) == 3
  	x = "......."
  elsif start_day_of_week(month, year) == 4
  	x = ".........."
  elsif start_day_of_week(month, year) == 5
  	x = "............."
  elsif start_day_of_week(month, year) == 6
  	x = "................"
  else "Everything Is Broken!" 
  end
  return x
end




# def months_with_thirty_one_days
# 	if month = 01, 03, 05, 07, 08, 10, 12
# 		puts (1...31)
# end

# def months_with_thirty_days
#    if month = 04, 06, 09, 11
#    	  puts (1...30)
# end

# def february
#    if year %400 == 0 
#    	put (1...29)
#    elsif year %100 == 0
#    	put (1...28)
#    elsif year %4 == 0
#    	put (1...29)
#    else put (1...28)
# end


# month = ARGV[0]
# year = ARGV[1]
# puts start_day_of_week(month, year)
# puts march_offset(month)
# puts leap_year_offset(year)
# puts zeller_month_number(month)

# def day_of_the_week_printer(month)
# 	1.upto(number_of_days_in_month(month)){|number| result = number + result}
# 	result.to_s
# end
