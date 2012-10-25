class Team < ActiveRecord::Base
  attr_accessible :name, :points
  has_many :cards, :as => :owner
end
