class CreateStationContacts < ActiveRecord::Migration
  def change
    create_table :station_contacts do |t|
      t.string :phone_number
      t.string :email
      t.string :website
    end
  end
end
