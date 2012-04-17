class User < ActiveRecord::Base
  attr_accessible :comment, :email, :first, :image_id, :last
end
