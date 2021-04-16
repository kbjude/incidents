class CreateWorkflowtemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :workflowtemplates do |t|
      t.string :title
      t.string :description
      t.text :responsible_party

      t.timestamps
    end
  end
end
