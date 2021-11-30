class AddEventIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :Event_id, :integer
    add_index :comments, :Event_id
  end
end
