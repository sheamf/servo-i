class StationsController < ApplicationController
  before_action :set_station, only: [:show, :edit, :update, :destroy]

  def index
    @stations = Station.all
    @hash = Gmaps4rails.build_markers(@stations) do |station, marker|
      marker.lat station.latitude
      marker.lng station.longitude
      marker.infowindow station.name
      marker.picture({
       # "url" => "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
       # "url" => "/servo_logo.png",
       "url" => "http://i.imgur.com/IsJU86s.png",   
       "width" =>  64,
       "height" => 66})
      marker.json({:id => station.id })
    end
  end

  def show
  end

  def new
    # @station = Station.new
    @station = StationForm.new(params[:owner_id]) # should this be ||= because I'm setting station in create else block?

  end

  def edit
  end

  def create
    # @station = Station.new(station_params)
    form = StationForm.new(params[:owner_id])
    if form.submit(params[:station])
      station = form.station
      redirect_to station
      # redirect_to owner_path(params[:owner_id])
    else
      @station = form
      render 'new'
    end



    # respond_to do |format|
    #   if @station.save
    #     format.html { redirect_to stations_url, notice: 'Station was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @station }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @station.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def update
    respond_to do |format|
      if @station.update(station_params)
        format.html { redirect_to @station, notice: 'Station was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @station.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @station.destroy
    respond_to do |format|
      format.html { redirect_to stations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_station
      @station = Station.find(params[:id])
    end

    # # Never trust parameters from the scary internet, only allow the white list through.
    # def station_params
    #   params.require(:station).permit(:name, :operational, :store_number, :cng_price, :deisel_price, :address1, :address2, :city, :state, :zip_code, :phone_number, :subscriber, :email, :website, :certification, :full_address)
    # end
end
