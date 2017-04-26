class DeleteDeleteColumnTrips < ActiveRecord::Migration[5.0]
  def change
    remove_column :trips, :delete, :boolean
  end
end
