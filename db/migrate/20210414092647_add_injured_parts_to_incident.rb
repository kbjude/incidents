class AddInjuredPartsToIncident < ActiveRecord::Migration[6.0]
  def change
    add_column :incidents, :injured_parts, :text
  end
end
