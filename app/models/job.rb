class Job < ActiveRecord::Base
  attr_accessible :audition_end_date, :audition_start_date, :description, :film_id, :location, :title

belongs_to :film

end
