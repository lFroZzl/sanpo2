class AddLocationIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :location_id, :integer
    add_index :events, :location_id
  end
end
