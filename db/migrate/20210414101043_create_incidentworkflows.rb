class CreateIncidentworkflows < ActiveRecord::Migration[6.0]
  def change
    create_table :incidentworkflows do |t|
      t.references :incident, null: false, foreign_key: true
      t.references :workflowtemplate, null: false, foreign_key: true

      t.timestamps
    end
  end
end
