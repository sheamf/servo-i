class StationForm

  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_reader :owner, :station, :station_location #what does this line accomplish?

  attr_accessor :name, :operational_status, :store_number, :cng_price, :diesel_price, :subscriber, :subscriber, :certification,
                :address1, :address2, :city, :state, :zip

  # # not using Virtus atm.  
  # attribute :name, String
  # attribute :operational_status, String
  # attribute :store_number, String
  # attribute :cng_price, Decimal
  # attribute :diesel_price, Decimal
  # attribute :subscriber, Boolean
  # attribute :address1, String
  # attribute :address2, String
  # attribute :city, String
  # attribute :state, String
  # attribute :zip, String 

  #something for the station owner id, maybe station contact

  # validates :name, presence: true
  validates_presence_of :name, #:operational_status, :store_number, :subscriber, :certification,
                        :address1, :city, :state, :zip
  #more validations?

  def initialize(owner)
    @owner = owner
  end

  def persisted?
      false
  end

  def save

  end

  def submit(params)
    extract_params(params)
    if valid?
      persist!
      true
    else
      false
    end
    #then, define persist!
  end

  def extract_params(params)
    params.each do |k,v|
      instance_variable_set("@#{k}", v)
    end
  end

private

  def persist!
      @station = Station.new(name: name, operational_status: operational_status, store_number: store_number,
                             cng_price: cng_price, diesel_price: diesel_price)
      @station.build_location(address1: address1, address2: address2, city: city, state: state, zip: zip)
      @station.save!
  end


end 
