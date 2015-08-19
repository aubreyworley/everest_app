class User < ActiveRecord::Base
  has_secure_password

  has_many :posts, dependent: :destroy
  has_many :maps, dependent: :destroy

  validates :email, :presence => true, uniqueness: true
  validates :password_digest, :presence => true, confirmation: true

  has_attached_file :profile_image,
                   :styles => { :medium => "150x150>"},
                   :default_url => "/images/:style/missing.png"

 validates_attachment :profile_image, 
                      :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
                      :size => { :in => 0..7000.kilobytes }
end
