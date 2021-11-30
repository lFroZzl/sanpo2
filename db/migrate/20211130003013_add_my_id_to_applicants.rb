class AddMyIdToApplicants < ActiveRecord::Migration[5.2]
  def change
    add_column :applicants, :My_id, :integer
    add_index :applicants, :My_id
  end
end
