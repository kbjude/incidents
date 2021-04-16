class RemoveOffenderFromIncidents < ActiveRecord::Migration[6.0]
  def change
    remove_column :incidents, :offender
  end
end
