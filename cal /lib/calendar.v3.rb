class Calendar

def initialize(month, year)
year = year.to_i
months_of_the_year_hash = {
	01 =>{
	'name'=>'January',
	'number'=>31,
	'zellers_number'=>13
	},
	02 =>{
	'name'=>'February',
	'number'=>(feb_leap_year(year) ? 29 : 28),
	'zellers_number'=>14
	},
	03 =>{
	'name'=>'March',
	'number'=>31,
	'zellers_number'=>3
	},
	04 =>{
	'name'=>'April',
	'number'=>30,
	'zellers_number'=>4
	},
	05 =>{
	'name'=>'May',
	'number'=>31,
	'zellers_number'=>5
	},
	06 =>{
	'name'=>'June',
	'number'=>30,
	'zellers_number'=>6
	},
	07 =>{
	'name'=>'July',
	'number'=>31,
	'zellers_number'=>7
	},
	8 =>{
	'name'=>'August',
	'number'=>31,
	'zellers_number'=>8
	},
	9 =>{
	'name'=>'September',
	'number'=>30,
	'zellers_number'=>9
	},
	10 =>{
	'name'=>'October',
	'number'=>31,
	'zellers_number'=>10
	},
	11 =>{
	'name'=>'November',
	'number'=>30,
	'zellers_number'=>11
	},
	12 =>{
	'name'=>'December',
	'number'=>31,
	'zellers_number'=>12
	}
}
# @month_name = months_of_the_year_hash.each{|key, value| puts "#{key} equals #{value}"}
# @month_name =1.upto(12){months_of_the_year_hash[1]['name']}
@month_name = months_of_the_year_hash[month]['name']
@month_number = months_of_the_year_hash[month]['number']
@zellers_month_number = months_of_the_year_hash[month]['zellers_number']
end

#feb_leap_year finds out if it is leap year and coresponds to the days_in_month_hash (ie 02 =>(feb_leap_year(year) ? 29 : 28))
# if it's a leap year this method will return true
def feb_leap_year(year)
	year = year.to_i
	if year%400 == 0 || year%4 == 0 && year%100!=0 
		return true
    end
end
def days_of_the_week(month, year)
	output = ""
	1.upto(@month_number) do|number| 
		new_output = number.to_s
		if number > 9
			new_output = " " + number.to_s
		elsif number > 1
			new_output = " "*2 + number.to_s
		end
		output += new_output
	end
	return output
end
def jan_feb_year_offset(month, year)
	month = month.to_i
	year = year.to_i
	if month == 01 || month == 02 
		 year = year -1
	else
		year
	end
end
# see http://en.wikipedia.org/wiki/Zeller's_congruence 
def start_day_of_week(month, year)
  leap_year_offset = (jan_feb_year_offset(month, year)/4).floor+6*(jan_feb_year_offset(month, year)/100).floor+(jan_feb_year_offset(month, year)/400).floor
  march_offset = ((@zellers_month_number+1)*26/10).floor 
  day_of_month = 1
  (day_of_month+march_offset+jan_feb_year_offset(month, year)+leap_year_offset)%7
end
#start_day_spacing(month, year) is the padding to assure the start_day_of_week falls under the correct day (ie Sat, Sun,)
#Sat=0 ...Fri=6
def start_day_padding(month, year)
  if start_day_of_week(month, year) == 0
  	x = " "*19
  elsif start_day_of_week(month, year) == 1
  	x = " "*1
  elsif start_day_of_week(month, year) == 2
  	x = " "*4
  elsif start_day_of_week(month, year) == 3
  	x = " "*7
  elsif start_day_of_week(month, year) == 4
  	x = " "*10
  elsif start_day_of_week(month, year) == 5
  	x = " "*13
  elsif start_day_of_week(month, year) == 6
  	x = " "*16
  else "Everything Is Broken!" 
  end
  return x
end

#simple method that puts the month and year correctly spaced out

def get_calendar_for_month_year(month, year)
  puts "    "+@month_name+" "+year
end

end#end class Calendar

