class AddCauseToIncident < ActiveRecord::Migration[6.0]
  def change
    add_column :incidents, :cause, :text
  end
end
