class Station < ActiveRecord::Base

	has_one :location, class_name: 'StationLocation'
	has_many :station_contacts

	belongs_to :owner

  def latitude
    location.latitude
  end

  def longitude
    location.longitude
  end

  def phone_number
    station_contacts.first.phone_number if station_contacts.first
  end



end
