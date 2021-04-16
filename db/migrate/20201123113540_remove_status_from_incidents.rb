class RemoveStatusFromIncidents < ActiveRecord::Migration[6.0]
  def change
    remove_reference :incidents, :status, null: false, foreign_key: true
  end
end
