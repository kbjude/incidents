class CreateInvestigationclassifications < ActiveRecord::Migration[6.0]
  def change
    create_table :investigationclassifications do |t|
      t.references :investigation, null: false, foreign_key: true
      t.references :subclassification, null: false, foreign_key: true

      t.timestamps
    end
  end
end
