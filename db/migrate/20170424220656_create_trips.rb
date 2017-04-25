class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :title, null: false
      t.string :length, null: false
      t.string :location, null: false
      t.string :overview, null: false
      t.integer :price
      t.string :tips
      t.string :picture

      t.timestamps
    end
  end
end
