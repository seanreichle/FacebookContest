class User < ActiveRecord::Base
  attr_accessible :comment, :email, :first, :last, :zip_code, :image

  validates :first, :presence => true
  validates :last, :presence => true
  validates :email, :presence => true, :uniqueness => true, :email => true
  validates :zip_code, :presence => true
  validates :comment, :presence => true
  
  mount_uploader :image, UsersImageUploader
end
