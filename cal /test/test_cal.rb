require 'test/unit'
require 'calendar'


class Month < Test::Unit::TestCase

 #   def test_01_get_month
 #     month = "02"
 #     assert_equal("Feb", get_month_name(month))
 #   end

 #   def test_01a_get_month
 #   	 month = "11"
 #   	 assert_equal("Nov", get_month_name(month))
 #   end
 #  def test_01b_get_month
 #   	 month = "01"
 #   	 assert_equal("Jan", get_month_name(month))
 #   end
 #   def test_01c_get_month
 #   	 month = "05"
 #   	 assert_equal("May", get_month_name(month))
 #   end
 #  def test_01d_get_year
	# year = "2011"
	# assert_equal("2011", year)
 #  end

 #  def test_02_zellar_start_day_of_week
 #  	month = "9"
 #  	year = "2012"
 #  	assert_equal(0, start_day_of_week(month, year))
 #  end
 
 # def test_02b_zellar_march_offset
 #  	month = "9"
 #  	year = "2012"
 #  	assert_equal(26, march_offset(month))
 #  end
 # def test_02c_leap_year_offset
 # 	month = "9"
 # 	year = "2012"
 # 	assert_equal(628, leap_year_offset(year))
 #  end
 #  def test_02d_zeller_month_number
 #  	month = "9"
 #  	year = "2012"
 #  	assert_equal(9, zeller_month_number(month))
 #  end
 #  def test_03_start_day_spacing
 #  	month = "02"
 #  	year = "2012"
 #  	assert_equal("...................", start_day_spacing(month, year))
 #  end
 #  def test_03_number_of_days_in_month
 #  	 month = "9"
 #  	 assert_equal(31, number_of_days_in_month(month))
 #  end
 #  def test_04_string_lentgh
 #  	month = "9"
 #  	year = "2012"
 #  	assert_equal(52 ,day_of_the_week_printer(month).to_s.length)
 #  end
  def test_05a_feb_leap
  	year = "2012"
 	assert_equal(true, feb_leap_year(year))
end
	def test_05b_jan_feb_offset
		year = 2012
		month = 02
		assert_equal(2011, jan_feb_year_offset(month, year))
	end
	def test_05c_jan_feb_offset
		year = 2000
		month = 01
		assert_equal(1999, jan_feb_year_offset(month, year))
	end
	def test_05d_jan_feb_offset
		year = 2012
		month = 03
		assert_equal(2012, jan_feb_year_offset(month, year))
	end
end

# 0, puts day_of_week(month, year)
# 26, puts march_offset(month)
# 628, puts leap_year_offset(year)
# 9, puts zeller_month_number(month)