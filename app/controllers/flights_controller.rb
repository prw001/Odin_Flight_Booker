class FlightsController < ApplicationController

	def index
		if params['search']
			date = helpers.format_date_selection(params['date'])
			@flights = Flight.where(departs_loc: Airport.find_by(code: params['depart_loc']),
									  arrives_loc: Airport.find_by(code: params['arrival_loc']),
									  departs_date: date)
			respond_to do |format|
				format.html {render 'index' }
				format.js { render 'flights/refresh_table' }
			end
		else
			@flights = Flight.all
		end
	end

	def show
		@flight = Flight.find_by(code: params['flight_code'])
	end

end
