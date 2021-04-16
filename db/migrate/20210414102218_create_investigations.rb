class CreateInvestigations < ActiveRecord::Migration[6.0]
  def change
    create_table :investigations do |t|
      t.references :incident, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :report_number
      t.datetime :date
      t.references :department, null: false, foreign_key: true
      t.string :status
      t.boolean :reportable_to_legal

      t.timestamps
    end
  end
end
