#get_month_name(month_number) takes the argument (01) and returns that corresponding months name (January)
def get_month_name(month_number)
    month_number = month_number.to_i 
	month_number_hash = {01=>"January", 02=>"February", 03=>"March", 04=>"April", 05=>"May", 06=>"June", 07=>"July", 8=>"August", 9=>"September", 10=>"October", 11=>"November", 12=>"December"}
	month_number_hash[month_number]
end
#feb_leap_year finds out if it is leap year and coresponds to the days_in_month_hash (ie 02 =>(feb_leap_year(year) ? 29 : 28))
# if it's a leap year this method will return true
def feb_leap_year(year)
	year = year.to_i
	if year%400 == 0 || year%4 == 0 && year%100!=0 
		return true
    end
end
#number_of_days_in_month(month_number, year) determines days in given arguments month
def number_of_days_in_month(month_number, year)
	month_number = month_number.to_i
	days_in_month_hash = {01 => 31, 02 =>(feb_leap_year(year) ? 29 : 28), 03 => 31, 04 => 30, 05 => 31, 06 => 30, 07 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}
    days_in_month_hash[month_number]
end
#day_of_the_week_printer(month, year) returns output of days of week (ie a string of "1234567891011" etc.) 
def day_of_the_week_printer(month, year)
	output = ""
	1.upto(number_of_days_in_month(month, year)) {|number| 
		new_output = number.to_s
		if number > 9
			new_output = " " + number.to_s
		elsif number > 1
			new_output = "  " + number.to_s
		end
		output += new_output
	}
	return output
end
# jan_feb_year_offset(month, year) subtracts 1 from year if month is jan or feb(this relates to zellers)
def jan_feb_year_offset(month, year)
	month = month.to_i
	year = year.to_i
	if month == 01 || month == 02 
		 year = year -1
	else
		year
	end
end
#note zellers takes jan as 13 and feb as 14
def zeller_month_number(month_number)
	month_number = month_number.to_i
	converter_hash = {01=>13, 02=>14, 03=>3, 04=>4, 05=>5, 06=>6, 07=>7, 8=>8, 9=>9, 10=>10, 11=>11, 12=>12}
	converter_hash[month_number]
end
# see http://en.wikipedia.org/wiki/Zeller's_congruence 
# jan_feb_year_offset(month, year) returns the correct year (ie 2000 is 1999 or 1999 is 1999)
def leap_year_offset(month, year) 
 (jan_feb_year_offset(month, year)/4).floor+6*(jan_feb_year_offset(month, year)/100).floor+(jan_feb_year_offset(month, year)/400).floor
end
#part of zeller's
def march_offset(month)
 ((zeller_month_number(month.to_i)+1)*26/10).floor 
end
#this is the most important method we need to calculate the start day any given month
#this is the zeller's congruence algorithem
def start_day_of_week(month, year)
 day_of_month = 1
 (day_of_month+march_offset(month)+jan_feb_year_offset(month, year)+leap_year_offset(month, year))%7
end
#simple method that puts the month and year correctly spaced out
def get_calendar_for_month_year(month, year)
  puts "    "+get_month_name(month)+" "+year
end
#start_day_spacing(month, year) is the padding to assure the start_day_of_week falls under the correct day (ie Sat, Sun,)
#Sat=0 ...Fri=6
def start_day_spacing(month, year)
  if start_day_of_week(month, year) == 0
  	x = "                   "
  elsif start_day_of_week(month, year) == 1
  	x = " "
  elsif start_day_of_week(month, year) == 2
  	x = "    "
  elsif start_day_of_week(month, year) == 3
  	x = "       "
  elsif start_day_of_week(month, year) == 4
  	x = "          "
  elsif start_day_of_week(month, year) == 5
  	x = "             "
  elsif start_day_of_week(month, year) == 6
  	x = "                "
  else "Everything Is Broken!" 
  end
  return x
end



