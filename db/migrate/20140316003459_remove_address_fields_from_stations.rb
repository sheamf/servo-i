class RemoveAddressFieldsFromStations < ActiveRecord::Migration
  def change
    remove_column :stations, :address1, :string
    remove_column :stations, :address2, :string
    remove_column :stations, :city, :string
    remove_column :stations, :state, :string
    remove_column :stations, :zip_code, :string
  end
end
