class ChangeOperationalTypeInStationModel < ActiveRecord::Migration
  def change
		change_column :stations, :operational, :string
  end
end
