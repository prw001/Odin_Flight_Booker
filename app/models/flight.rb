class Flight < ApplicationRecord
  belongs_to :departs_loc, :class_name => 'Airport'
  belongs_to :arrives_loc, :class_name => 'Airport'
end
