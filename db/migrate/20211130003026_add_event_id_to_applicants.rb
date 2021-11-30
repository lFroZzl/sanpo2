class AddEventIdToApplicants < ActiveRecord::Migration[5.2]
  def change
    add_column :applicants, :Event_id, :integer
    add_index :applicants, :Event_id
  end
end
