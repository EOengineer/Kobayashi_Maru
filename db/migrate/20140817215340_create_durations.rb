class CreateDurations < ActiveRecord::Migration
  def change
    create_table :durations do |t|
      t.string :length
      t.timestamps
    end
  end
end
