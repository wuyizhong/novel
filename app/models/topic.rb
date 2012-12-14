class Topic < ActiveRecord::Base
  attr_accessible :text, :title, :user_id
  
  has_many :replies
  belongs_to :user
end
