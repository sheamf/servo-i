class RemoveColumnsFromStations < ActiveRecord::Migration
  def change
   	remove_column :stations, :phone_number 
  	remove_column :stations, :email 
  	remove_column :stations, :website 
  	remove_column :stations, :owner_name
  	remove_column :stations, :full_address
  	remove_column :stations, :latitude 
  	remove_column :stations, :longitude
  end
end
