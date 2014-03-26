class Station < ActiveRecord::Base

	# has_one :location, class_name: 'StationLocation'
  has_many :station_locations
  # belongs_to :station_location
	has_many :station_contacts

	belongs_to :owner


end
