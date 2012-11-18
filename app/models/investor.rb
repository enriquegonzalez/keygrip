class Investor < ActiveRecord::Base
  attr_accessible :accredidation, :bio, :budget_size, :first_name, :investments, :last_name, :location, :user_id

  belongs_to :user

end
