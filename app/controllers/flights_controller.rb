class FlightsController < ApplicationController

	def index
		@flights = Flight.all 
	end

	def show
		@flight = Flight.find_by(code: params['flight_code'])
	end

end
