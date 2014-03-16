class StationLocation < ActiveRecord::Base

	has_many :stations

	geocoded_by :address1
	after_validation :geocode 


end
