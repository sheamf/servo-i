class StationLocation < ActiveRecord::Base


	has_one :station

	geocoded_by :full_address
	after_validation :geocode 




  def full_address
    [address1, address2, city, state, zip].compact.join(', ')
  end



end
