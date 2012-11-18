class Film < ActiveRecord::Base
  attr_accessible :budget, :genre_id, :location, :synopsis, :trailer, :status

belongs_to :genre
has_many( :crew_members, {:through => :role})
has_many :jobs
end
