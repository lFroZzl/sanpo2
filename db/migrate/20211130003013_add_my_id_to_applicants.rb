class AddMyIdToApplicants < ActiveRecord::Migration[5.2]
  def change
    add_column :applicants, :my_id, :integer
    add_index :applicants, :my_id
  end
end

