class AddUserIdToIncident < ActiveRecord::Migration[6.0]
  def change
    add_column :incidents, :user_id, :integer
  end
end
