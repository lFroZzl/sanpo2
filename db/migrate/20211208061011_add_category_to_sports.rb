class AddCategoryToSports < ActiveRecord::Migration[5.2]
  def change
    add_column :sports, :category, :string
  end
end
