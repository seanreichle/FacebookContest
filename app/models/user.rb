class User < ActiveRecord::Base
  attr_accessible :comment, :email, :first, :zip_code, :image, :image_cache

  validates :first, :presence => true
  validates :email, :presence => true, :uniqueness => true, :email => true
  validates :zip_code, :presence => true
  validates :comment, :presence => true
  mount_uploader :image, UsersImageUploader
end
