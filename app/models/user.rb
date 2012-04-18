class User < ActiveRecord::Base
  attr_accessible :comment, :email, :first, :image_id, :last, :zip_code
  
  validates_presence_of :first, :last, :email, :zip_code, :comment
end
