class DropCancerTypes < ActiveRecord::Migration
  def change
    drop_table :cancer_types
  end
end
