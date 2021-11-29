class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.integer :min_age
      t.integer :max_age
      t.text :note
      t.datetime :start_date
      t.datetime :end_date
      t.integer :participant

      t.timestamps
    end
  end
end
