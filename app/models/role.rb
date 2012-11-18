class Role < ActiveRecord::Base
  attr_accessible :crew_member_id, :film_id

belongs_to :crew_member
belongs_to :film

end
