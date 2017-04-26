class DeleteDestroyedColumnTrips < ActiveRecord::Migration[5.0]
  def change
    remove_column :trips, :destroyed, :boolean
  end
end
