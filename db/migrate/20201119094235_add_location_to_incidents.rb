class AddLocationToIncidents < ActiveRecord::Migration[6.0]
  def change
    add_reference :incidents, :location, null: false, foreign_key: true
  end
end
