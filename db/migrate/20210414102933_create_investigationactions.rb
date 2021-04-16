class CreateInvestigationactions < ActiveRecord::Migration[6.0]
  def change
    create_table :investigationactions do |t|
      t.references :investigation, null: false, foreign_key: true
      t.string :action
      t.string :resposibility
      t.date :target_date

      t.timestamps
    end
  end
end
