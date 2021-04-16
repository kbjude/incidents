class CreateIncidents < ActiveRecord::Migration[6.0]
  def change
    create_table :incidents do |t|
      t.references :incidentcategory
      t.date :date_time, null: false
      t.string :address
      t.text :description
      t.string :status, null: false

      t.timestamps
    end
  end
end
