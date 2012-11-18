class CrewMemberSkill < ActiveRecord::Base
  attr_accessible :crew_member_id, :skill_id

belongs_to :crew_member
belongs_to :skill

end
