class AddCategoryToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :category, :string
  end
end
