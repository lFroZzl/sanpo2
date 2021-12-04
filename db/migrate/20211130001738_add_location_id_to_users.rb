class AddLocationIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :location_id, :integer
    add_index :users, :location_id
  end
end
