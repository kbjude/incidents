class CreateIncidentsubcategories < ActiveRecord::Migration[6.0]
  def change
    create_table :incidentsubcategories do |t|
      t.references :incidentcategory, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
