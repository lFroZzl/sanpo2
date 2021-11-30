class AddMyIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :my_id, :integer
    add_index :comments, :my_id
  end
end
