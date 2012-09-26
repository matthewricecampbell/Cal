MONTH = ARGV[0]
YEAR = ARGV[1]

def get_month_name(month_number)
    month_number = month_number.to_i
	month_number_hash = {01=>"Jan", 02=>"Feb", 03=>"Mar", 04=>"Apr", 05=>"May", 06=>"Jun", 07=>"Jul", 8=>"Aug", 9=>"Sept", 10=>"Oct", 11=>"Nov", 12=>"Dec"}
	month_number_hash[month_number]
end
# def number_of_days_in_month
# 	{"Jan" => 31, "Feb" => 28, "Mar" => 31, "Apr" => 30, "May" => 31, "Jun" => 30, "Jul" => 31, "Aug" => 30, "Sep" => 31, "Oct" => 30, "Nov" => 31, "Dec" => 30}
# end
def zeller_month_number(month_number)
	month_number = month_number.to_i
	converter_hash = {01=>13, 02=>14, 03=>3, 04=>4, 05=>5, 06=>6, 07=>7, 8=>8, 9=>9, 10=>10, 11=>11, 12=>12}
	converter_hash[month_number]
end
def leap_year_offset 
 (YEAR.to_i/4).floor+6*(YEAR.to_i/100).floor+(YEAR.to_i/400).floor
end

def march_offset 
 ((zeller_month_number(MONTH.to_i)+1)*26/10).floor 
end
def day_of_week 
 day_of_month = 1
 (day_of_month+march_offset+YEAR.to_i+leap_year_offset)%7
end
puts day_of_week
puts march_offset
puts leap_year_offset
puts zeller_month_number(MONTH)



class Calendar
  puts "    "+get_month_name(MONTH)+" "+YEAR
  puts "Su Mo Tu We Th Fr Sa"
end




 