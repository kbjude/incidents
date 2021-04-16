class CreateCauses < ActiveRecord::Migration[6.0]
  def change
    create_table :causes do |t|
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
