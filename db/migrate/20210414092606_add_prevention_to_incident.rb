class AddPreventionToIncident < ActiveRecord::Migration[6.0]
  def change
    add_column :incidents, :prevention, :text
  end
end
