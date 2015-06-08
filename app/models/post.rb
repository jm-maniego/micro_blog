class Post < ActiveRecord::Base
  self.per_page = 10
  attr_accessible :content, :permalink, :teaser, :title, :user_id
  
  belongs_to :user
  has_many :posts_tags
  has_many :tags, through: :posts_tags

  before_save do |post|
  	self.teaser = self.content[0..49]
  end
end
