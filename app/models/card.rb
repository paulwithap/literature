class Card < ActiveRecord::Base
  attr_accessible :number, :suit
  belongs_to :owner, :polymorphic => true
end
