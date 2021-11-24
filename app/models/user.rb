class User < ApplicationRecord
  validates :email, presence:true, uniquness: true
  validates :password, presence:true
  has_secure_password
end
