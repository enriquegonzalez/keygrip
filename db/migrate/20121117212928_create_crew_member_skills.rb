class CreateCrewMemberSkills < ActiveRecord::Migration
  def change
    create_table :crew_member_skills do |t|
      t.integer :crew_member_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
