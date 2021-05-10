class AddIncidentIdToActionRequired < ActiveRecord::Migration[6.0]
  def change
    add_column :action_requireds, :incident_id, :integer
  end
end
