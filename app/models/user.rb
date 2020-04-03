class User < ApplicationRecord
  has_secure_password
  has_many :trips
  validates :user_name, :presence => true
  validates :password, confirmation: {message: "Password's do not match"}
  validates :password_confirmation, presence: true
  validates :user_name, uniqueness: true

end
