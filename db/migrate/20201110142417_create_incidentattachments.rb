class CreateIncidentattachments < ActiveRecord::Migration[6.0]
  def change
    create_table :incidentattachments do |t|
      t.references :incident, null: false
      t.string :filepath, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
