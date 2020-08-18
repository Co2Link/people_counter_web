class CreateTimeSlices < ActiveRecord::Migration[6.0]
  def change
    create_table :time_slices do |t|
      t.integer :up
      t.integer :down
      t.references  :counter, foreign_key: true

      t.timestamps
    end
  end
end
