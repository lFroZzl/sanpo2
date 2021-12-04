class AddSportIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :sport_id, :integer
    add_index :events, :sport_id
  end
end
