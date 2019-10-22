class User < ApplicationRecord
  has_secure_password
  has_many :comments, dependent: :destroy
  has_many :articles, through: :comments
  validates :email, presence: true, uniqueness: true
end

