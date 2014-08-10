class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.integer :size, null: false
      t.integer :days_duration, null: false

      t.timestamps
    end
  end
end
