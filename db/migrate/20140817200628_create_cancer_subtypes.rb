class CreateCancerSubtypes < ActiveRecord::Migration
  def change
    create_table :cancer_subtypes do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
