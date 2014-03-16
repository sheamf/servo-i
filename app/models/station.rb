class Station < ActiveRecord::Base

	#belongs_to :owner
	# belongs_to :station_location

	geocoded_by :full_address
	after_validation :geocode 

end
