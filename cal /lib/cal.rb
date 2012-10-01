require './calendar'

month = ARGV[0]
year = ARGV[1]

# puts day_of_week
# puts march_offset
# puts leap_year_offset
# puts zeller_month_number(MONTH)





get_calendar_for_month_year(month, year)
puts "Su Mo Tu We Th Fr Sa"
y = start_day_spacing(month, year).to_s + day_of_the_week_printer(month, year)
puts y.scan(/.{1,21}/)#(scans and puts characters 1 through 21 and the starts a new line)

# "123456".scan(/.../){ |x| puts x }
# .insert(1, ' ').insert(2, ' ').insert(4, ' ').insert(5, ' ').insert(7, ' ').insert(8, ' ').insert(10, ' ').insert(11, ' ').insert(13, ' ').insert(14, ' ').insert(16, ' ').insert(17, ' ').insert(19, ' ').insert(20, ' ').insert(22, ' ').insert(23, ' ').insert(25, ' ').insert(28, ' ').insert(31, ' ').insert(34, ' ').insert(37, ' ').insert(40, ' ').insert(43, ' ').insert(46, ' ').insert(49, ' ').insert(52, ' ').insert(55, ' ').insert(58, ' ').insert(61, ' ').insert(64, ' ').insert(67, ' ').insert(70, ' ').insert(73, ' ').insert(76, ' ').insert(79, ' ').insert(82, ' ').insert(85, ' ').insert(88, ' ')
# puts jan_feb_year_offset(month, year)