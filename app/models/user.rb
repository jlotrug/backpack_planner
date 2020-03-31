class User < ApplicationRecord
  has_secure_password
  validates :user_name, :presence => true
  validates :password, confirmation: {message: "Password's do not match"}
  validates :password_confirmation, presence: true

end
