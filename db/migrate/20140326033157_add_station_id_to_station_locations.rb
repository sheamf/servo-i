class AddStationIdToStationLocations < ActiveRecord::Migration
  def change
    add_column :station_locations, :station_id, :integer
  end
end
