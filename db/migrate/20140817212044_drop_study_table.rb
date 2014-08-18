class DropStudyTable < ActiveRecord::Migration
  def change
    drop_table :studies
  end
end
