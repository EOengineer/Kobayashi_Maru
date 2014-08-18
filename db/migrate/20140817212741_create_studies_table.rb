class CreateStudiesTable < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :title
      t.text :summary
      t.integer :cancer_subtype_id
      t.integer :status_id
      t.integer :duration_id
      t.integer :size_id
    end
  end
end
