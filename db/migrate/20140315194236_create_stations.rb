class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.boolean :operational
      t.string :store_number
      t.decimal :cng_price
      t.decimal :deisel_price
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number
      t.boolean :subscriber
      t.string :email
      t.string :website
      t.string :certification

      t.timestamps
    end
  end
end
