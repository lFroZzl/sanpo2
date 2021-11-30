class AddTargetIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :Target_id, :integer
    add_index :comments, :Target_id
  end
end
