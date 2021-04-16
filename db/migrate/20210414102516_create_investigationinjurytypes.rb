class CreateInvestigationinjurytypes < ActiveRecord::Migration[6.0]
  def change
    create_table :investigationinjurytypes do |t|
      t.references :investigation, null: false, foreign_key: true
      t.references :injurytype, null: false, foreign_key: true

      t.timestamps
    end
  end
end
