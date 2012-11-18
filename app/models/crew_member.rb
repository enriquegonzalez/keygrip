class CrewMember < ActiveRecord::Base
  attr_accessible :bio, :filmmaker, :first_name, :img, :last_name, :location, :user_id

  belongs_to :user
  has_many( :skills, {:through => :crew_member_skills })
  has_many( :films, {:through => :role })
  
end
