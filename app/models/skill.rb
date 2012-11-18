class Skill < ActiveRecord::Base
  attr_accessible :crew_member_skill
 
  has_many :crew_members, :through => :crew_member_skills

end
