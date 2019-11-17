class User < ApplicationRecord
  has_secure_password

  validates :uName, presence: true, uniqueness: true
end
