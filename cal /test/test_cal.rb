require 'test/unit'
require 'calendar'


class Month < Test::Unit::TestCase

   def test_01_get_month
     month = "02"
     assert_equal("February", get_month_name_and_number(month))
   end

   def test_01a_get_month
   	 month = "11"
   	 assert_equal("November", get_month_name_and_number(month))
   end
  def test_01b_get_month
   	 month = "01"
   	 assert_equal("January", get_month_name_and_number(month))
   end
   def test_01c_get_month
   	 month = "05"
   	 assert_equal("May", get_month_name_and_number(month))
   end
  def test_01d_get_year
	year = "2011"
	assert_equal("2011", year)
  end
  def test_01e_get_year
	year = "1900"
	assert_equal("1900", year)
  end
  def test_01f_get_year
	year = "1800"
	assert_equal("1800", year)
  end
  def test_02_zellar_start_day_of_week
  	month = "9"
  	year = "2012"
  	assert_equal(0, start_day_of_week(month, year))
  end
  def test_03_start_day_spacing
  	month = "02"
  	year = "2012"
  	assert_equal("          ", start_day_padding(month, year))
  end
  def test_03a_number_of_days_in_month
  	year = "2012"
  	 month = "9"
  	 assert_equal(30, number_of_days_in_month(month, year))
  end
  def test_04_string_lentgh
  	month = "9"
  	year = "2012"
  	assert_equal(88 ,days_of_the_week(month, year).to_s.length)
  end
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
	def test_06_days_in_feb_if_leap_year
		year = 1960
		month = 02
		assert_equal("1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29", days_of_the_week(month, year))
	end
	def test_06_days_in_feb_if_leap_year
		year = 2012
		month = 02
		assert_equal("1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29", days_of_the_week(month, year))
	end
	def test_06_days_in_feb_if_isnt_leap_year
		year = 1899
		month = 02
		assert_equal("1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28", days_of_the_week(month, year))
	end
  def test_07_ARGV_length
    month = 02
    assert_equal(1, month.to_s.length)
  end
end

# 0, puts day_of_week(month, year)
# 26, puts march_offset(month)
# 628, puts leap_year_offset(year)
# 9, puts zeller_month_number(month)