class User < ActiveRecord::Base
  has_secure_password

  has_many :posts, dependent: :destroy
  has_many :maps, dependent: :destroy

  validates :email, :presence => true, uniqueness: true
  validates :password_digest, :presence => true, confirmation: true
end
