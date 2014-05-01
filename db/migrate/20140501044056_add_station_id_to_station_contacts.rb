class AddStationIdToStationContacts < ActiveRecord::Migration
  def change
    add_column :station_contacts, :station_id, :integer
  end
end
