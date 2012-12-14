class Reply < ActiveRecord::Base
  attr_accessible :text, :topic_id, :user_id

  belongs_to :user
  belongs_to :topic
end
