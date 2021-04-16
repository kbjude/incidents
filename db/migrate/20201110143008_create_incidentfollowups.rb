class CreateIncidentfollowups < ActiveRecord::Migration[6.0]
  def change
    create_table :incidentfollowups do |t|
      t.references :incident, null: false
      t.string :status, null: false
      t.text :comment, null: false
      t.date :date

      t.timestamps
    end
  end
end
