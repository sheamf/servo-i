class StationLocationsController < ApplicationController
  before_action :set_station_location, only: [:show, :edit, :update, :destroy]

  def index
    @station_locations = StationLocation.all
    @hash = Gmaps4rails.build_markers(@station_locations) do |station_location, marker|
      marker.lat station_location.latitude
      marker.lng station_location.longitude
    end
  end

  def show
  end

  def new
    @station_location = StationLocation.new
  end

  def edit
  end

  def create
    @station_location = StationLocation.new(station_location_params)

    respond_to do |format|
      if @station_location.save
        format.html { redirect_to @station_location, notice: 'Station location was successfully created.' }
        format.json { render action: 'show', status: :created, location: @station_location }
      else
        format.html { render action: 'new' }
        format.json { render json: @station_location.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @station_location.update(station_location_params)
        format.html { redirect_to @station_location, notice: 'Station location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @station_location.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @station_location.destroy
    respond_to do |format|
      format.html { redirect_to station_locations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_station_location
      @station_location = StationLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def station_location_params
      params.require(:station_location).permit(:name, :address1, :address2, :city, :state, :zip, :latitude, :longitude, :gmaps, :station_id)
    end
end
