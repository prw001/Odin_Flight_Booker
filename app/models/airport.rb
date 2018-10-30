class Airport < ApplicationRecord
	has_many :departures, foreign_key: "departs_loc", :class_name => 'Flight'
	has_many :arrivals, foreign_key: "arrives_loc", :class_name => 'Flight'
end
