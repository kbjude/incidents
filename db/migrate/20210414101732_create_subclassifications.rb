class CreateSubclassifications < ActiveRecord::Migration[6.0]
  def change
    create_table :subclassifications do |t|
      t.references :classification, null: false, foreign_key: true
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
