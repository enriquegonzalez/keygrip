class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :username

  has_many :crew_members
  has_many :investors

  has_secure_password

end
