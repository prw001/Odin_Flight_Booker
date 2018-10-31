module FlightsHelper

	def get_month_from_num(month_num)
		case month_num
		when '01'
			'JAN'
		when '02'
			'FEB'
		when '03'
			'MAR'
		when '04'
			'APR'
		when '05'
			'MAY'
		when '06'
			'JUN'
		when '07'
			'JUL'
		when '08'
			'AUG'
		when '09'
			'SEP'
		when '10'
			'OCT'
		when '11'
			'NOV'
		when '12'
			'DEC'
		else
			'N/A'
		end
	end

	def format_date_selection(date)
		"#{date.slice(8,2)}_#{get_month_from_num(date[5..6])}_#{date.slice(0,4)}"
	end
end
