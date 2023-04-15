class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.text :name
      t.text :can_use_tech
      t.text :comment
      t.string :color 

      t.timestamps
    end
  end
end
