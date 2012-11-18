class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :crew_member_id
      t.integer :film_id

      t.timestamps
    end
  end
end
