class CreateVictims < ActiveRecord::Migration[6.0]
  def change
    create_table :victims do |t|
      t.references :incident, null: false, foreign_key: true
      t.string :name
      t.string :contact
      t.text :remark
      t.string :role
      t.boolean :employee
      t.string :address
      t.string :email
      t.string :supervisor

      t.timestamps
    end
  end
end
