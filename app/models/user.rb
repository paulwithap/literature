class User < ActiveRecord::Base
  attr_accessible :password, :username

  has_many Cards
end
