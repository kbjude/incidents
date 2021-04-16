class CreateInvestigationcosts < ActiveRecord::Migration[6.0]
  def change
    create_table :investigationcosts do |t|
      t.references :investigation, null: false, foreign_key: true
      t.string :item
      t.float :amount
      t.string :currency

      t.timestamps
    end
  end
end
