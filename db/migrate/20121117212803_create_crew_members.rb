class CreateCrewMembers < ActiveRecord::Migration
  def change
    create_table :crew_members do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.boolean :filmmaker
      t.string :img
      t.text :bio
      t.string :location

      t.timestamps
    end
  end
end
