class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :user_id, null: false
      t.string :company
      t.text :about
      t.text :mission
      t.string :city
      t.string :state
      t.string :contact
    end
  end
end
