
def get_month_name(month_number)
    month_number = month_number.to_i
	month_number_hash = {01=>"January", 02=>"February", 03=>"March", 04=>"April", 05=>"May", 06=>"June", 07=>"July", 8=>"August", 9=>"September", 10=>"October", 11=>"November", 12=>"December"}
	month_number_hash[month_number]
end
def feb_leap_year(year)
	year = year.to_i
	if year%400 == 0 || year%4 == 0 && year%100!=0 
		return true
    end
end
def number_of_days_in_month(month_number, year)
	month_number = month_number.to_i
	days_in_month_hash = {01 => 31, 02 =>(feb_leap_year(year) ? 29 : 28), 03 => 31, 04 => 30, 05 => 31, 06 => 30, 07 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}
    days_in_month_hash[month_number]
end
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
# def space_machine(month)
# 	if month == 02
#       day_of_the_week_printer(month).insert(1, ' ').insert(2, ' ').insert(4, ' ').insert(5, ' ').insert(7, ' ').insert(8, ' ').insert(10, ' ').insert(11, ' ').insert(13, ' ').insert(14, ' ').insert(16, ' ').insert(17, ' ').insert(19, ' ').insert(20, ' ').insert(22, ' ').insert(23, ' ').insert(25, ' ').insert(28, ' ').insert(31, ' ').insert(34, ' ').insert(37, ' ').insert(40, ' ').insert(43, ' ').insert(46, ' ').insert(49, ' ').insert(52, ' ').insert(55, ' ').insert(58, ' ').insert(61, ' ').insert(64, ' ').insert(67, ' ').insert(70, ' ').insert(73, ' ').insert(76, ' ').insert(79, ' ').insert(82, ' ')
#     else
#       day_of_the_week_printer(month).insert(1, ' ').insert(2, ' ').insert(4, ' ').insert(5, ' ').insert(7, ' ').insert(8, ' ').insert(10, ' ').insert(11, ' ').insert(13, ' ').insert(14, ' ').insert(16, ' ').insert(17, ' ').insert(19, ' ').insert(20, ' ').insert(22, ' ').insert(23, ' ').insert(25, ' ').insert(28, ' ').insert(31, ' ').insert(34, ' ').insert(37, ' ').insert(40, ' ').insert(43, ' ').insert(46, ' ').insert(49, ' ').insert(52, ' ').insert(55, ' ').insert(58, ' ').insert(61, ' ').insert(64, ' ').insert(67, ' ').insert(70, ' ').insert(73, ' ').insert(76, ' ').insert(79, ' ').insert(82, ' ').insert(85, ' ').insert(88, ' ')
#     end
# end
def jan_feb_year_offset(month, year)
	month = month.to_i
	year = year.to_i
	if month == 01 || month == 02 
		 year = year -1
	else
		year
	end
end
def zeller_month_number(month_number)
	month_number = month_number.to_i
	converter_hash = {01=>13, 02=>14, 03=>3, 04=>4, 05=>5, 06=>6, 07=>7, 8=>8, 9=>9, 10=>10, 11=>11, 12=>12}
	converter_hash[month_number]
end
def leap_year_offset(month, year) 
 (jan_feb_year_offset(month, year)/4).floor+6*(jan_feb_year_offset(month, year)/100).floor+(jan_feb_year_offset(month, year)/400).floor
end

def march_offset(month)
 ((zeller_month_number(month.to_i)+1)*26/10).floor 
end
def start_day_of_week(month, year)
 day_of_month = 1
 (day_of_month+march_offset(month)+jan_feb_year_offset(month, year)+leap_year_offset(month, year))%7
end


def get_calendar_for_month_year(month, year)
  puts "    "+get_month_name(month)+" "+year
end
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
