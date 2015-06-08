class Tag < ActiveRecord::Base
  attr_accessible :name
  has_many :posts_tags
  has_many :posts, through: :posts_tags
end
