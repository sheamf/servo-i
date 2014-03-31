class Station < ActiveRecord::Base

	has_one :location, class_name: 'StationLocation'
	has_many :station_contacts

	belongs_to :owner


  def latitude
    self.location.latitude
  end

  def longitude
    self.location.longitude
  end



end
