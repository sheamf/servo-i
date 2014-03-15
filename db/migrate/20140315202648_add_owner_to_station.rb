class AddOwnerToStation < ActiveRecord::Migration
  def change
    add_column :stations, :owner_name, :string
  end
end
