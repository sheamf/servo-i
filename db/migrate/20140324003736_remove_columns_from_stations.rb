class RemoveColumnsFromStations < ActiveRecord::Migration
  def change
   	remove_column :stations, :phone_number, :string
  	remove_column :stations, :email, :string 
  	remove_column :stations, :website, :string 
  	remove_column :stations, :owner_name, :string
  	remove_column :stations, :full_address, :string
  	remove_column :stations, :latitude, :float 
  	remove_column :stations, :longitude, :float
  end
end
