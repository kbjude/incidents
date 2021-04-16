class AddActivityToIncident < ActiveRecord::Migration[6.0]
  def change
    add_column :incidents, :activity, :string
  end
end
