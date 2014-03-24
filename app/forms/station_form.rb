class StationForm

	extend ActiveModel::Naming
	include ActiveModel::Conversion
	include ActiveModel::Validations

	attr_reader :station
	attr_reader :station_location

	attribute :name, String
	attribute :operational_status, String
	attribute :store_number, String
	attribute :cng_price, Decimal
	attribute :diesel_price, Decimal
	attribute :subscriber, Boolean
	attribute :address1, String
	attribute :address2, String
	attribute :city, String
	attribute :state, String
	attribute :zip, String 

	#something for the station owner id, maybe station contact

	validates :name, presence: true
	#more validations

	def persisted?
		false
	end

	def save
		if valid?
			persist!
			true
		else
			false
		end
	end

private

	def persist!
		@station = Station.create....

	end



end	
