class RemoveNameFromStationLocations < ActiveRecord::Migration
  def change
		remove_column :station_locations, :name, :string
  end
end
