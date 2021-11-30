class AddUserIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :User_id, :integer
    add_index :events, :User_id
  end
end
