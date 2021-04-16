class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :district
      t.string :village

      t.timestamps
    end
  end
end
