class CreateInvestigationinjurylocations < ActiveRecord::Migration[6.0]
  def change
    create_table :investigationinjurylocations do |t|
      t.references :investigation, null: false, foreign_key: true
      t.references :injurylocation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
