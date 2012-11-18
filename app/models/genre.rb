class Genre < ActiveRecord::Base
  attr_accessible :film_genre

  has_many :films
  
end
