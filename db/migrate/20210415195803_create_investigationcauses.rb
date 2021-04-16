class CreateInvestigationcauses < ActiveRecord::Migration[6.0]
  def change
    create_table :investigationcauses do |t|
      t.references :investigation, null: false, foreign_key: true
      t.references :cause, null: false, foreign_key: true

      t.timestamps
    end
  end
end
