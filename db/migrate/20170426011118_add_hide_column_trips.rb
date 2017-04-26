class AddHideColumnTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :hidden, :boolean,  default: false
  end
end
