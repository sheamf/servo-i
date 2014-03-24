class RenameColumnInStations < ActiveRecord::Migration
  def change
		rename_column :stations, :operational, :operational_status
		rename_column :stations, :deisel_price, :diesel_price
  end
end
