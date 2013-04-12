class User < ActiveRecord::Base

  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
  has_many :pictures
  before_save { email.downcase! }

  validates_presence_of :password, :on => :create

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :name, presence: true, uniqueness: { case_sensitive: false }


end
