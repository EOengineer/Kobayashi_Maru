class CreateCancerTypes < ActiveRecord::Migration
  def change
    create_table :cancer_types do |t|
      t.string :name, null: :false

      t.timestamps
    end
  end
end
