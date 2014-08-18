class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :number, null: false

      t.timestamps
    end
  end
end
