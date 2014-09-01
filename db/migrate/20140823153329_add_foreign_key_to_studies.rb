class AddForeignKeyToStudies < ActiveRecord::Migration
  def change
    add_column :studies, :state_id, :integer
  end
end
