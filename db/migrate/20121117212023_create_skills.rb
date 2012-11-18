class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :crew_member_skill

      t.timestamps
    end
  end
end
