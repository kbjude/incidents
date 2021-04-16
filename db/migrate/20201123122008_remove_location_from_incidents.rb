class RemoveLocationFromIncidents < ActiveRecord::Migration[6.0]
  def change
    remove_reference :incidents, :location, null: false, foreign_key: true
  end
end
