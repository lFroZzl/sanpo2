class AddLocationIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :Location_id, :integer
    add_index :events, :Location_id
  end
end
