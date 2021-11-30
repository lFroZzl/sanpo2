class AddLocationIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Location_id, :integer
    add_index :users, :Location_id
  end
end
