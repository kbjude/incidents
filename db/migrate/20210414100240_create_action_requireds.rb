class CreateActionRequireds < ActiveRecord::Migration[6.0]
  def change
    create_table :action_requireds do |t|
      t.datetime :datetime
      t.string :name
      t.string :phone
      t.string :address
      t.string :category
      t.string :ref_number
      t.text :remarks

      t.timestamps
    end
  end
end
