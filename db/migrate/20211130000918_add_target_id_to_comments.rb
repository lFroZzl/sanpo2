class AddTargetIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :target_id, :integer
    add_index :comments, :target_id
  end
end
