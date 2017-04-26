class AddDestroyedToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :destroyed, :boolean, default: false
  end
end
