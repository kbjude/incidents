class CreateWitnesses < ActiveRecord::Migration[6.0]
  def change
    create_table :witnesses do |t|
      t.references :incident, null: false, foreign_key: true
      t.string :name
      t.string :contact
      t.text :remark

      t.timestamps
    end
  end
end
