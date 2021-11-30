class AddSportIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :Sport_id, :integer
    add_index :events, :Sport_id
  end
end
