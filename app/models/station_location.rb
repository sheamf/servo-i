class StationLocation < ActiveRecord::Base


	belongs_to :station
  # has_many :stations

	geocoded_by :full_address
	after_validation :geocode 




  def full_address
    [address1, address2, city, state, zip].compact.join(', ')
  end



end
