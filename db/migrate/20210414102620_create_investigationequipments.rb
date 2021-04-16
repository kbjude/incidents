class CreateInvestigationequipments < ActiveRecord::Migration[6.0]
  def change
    create_table :investigationequipments do |t|
      t.references :investigation, null: false, foreign_key: true
      t.string :equipment
      t.text :description

      t.timestamps
    end
  end
end
