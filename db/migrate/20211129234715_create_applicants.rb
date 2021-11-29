class CreateApplicants < ActiveRecord::Migration[5.2]
  def change
    create_table :applicants do |t|
      t.boolean :approved, default: "false"
      t.integer :rating

      t.timestamps
    end
  end
end
