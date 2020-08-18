class CreateCounters < ActiveRecord::Migration[6.0]
  def change
    create_table :counters do |t|
      t.integer :totalup
      t.integer :totaldown

      t.timestamps
    end
  end
end
