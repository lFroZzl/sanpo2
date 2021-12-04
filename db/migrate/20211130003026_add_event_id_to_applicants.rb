class AddEventIdToApplicants < ActiveRecord::Migration[5.2]
  def change
    add_column :applicants, :event_id, :integer
    add_index :applicants, :event_id
  end
end
