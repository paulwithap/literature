require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  attr_accessible :username, :password
  belongs_to :team
  has_many :cards, :as => :owner

  before_save :encrypt_password

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :password

  def self.authenticate(username, password)
    user = find_by_username(username)
    if user && BCrypt::Password.new(user.password) == password
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      # not going to use a salt
      self.password = BCrypt::Password.create(password)
    end
  end

end
