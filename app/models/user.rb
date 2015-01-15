class User < ActiveRecord::Base

  has_many :collections

  has_secure_password

  validates_confirmation_of :password, on: :create
  validates_presence_of :password_confirmation

  validates :email,
    presence: true,
    uniqueness: { case_sensitive: false }

  def self.authenticate email, password
    User.find_by_email(email).try(:authenticate, password)
  end

end
