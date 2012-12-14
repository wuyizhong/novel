class BookAssess < ActiveRecord::Base
  attr_accessible :text, :user_id ,:book_id

  belongs_to :book
  belongs_to :user
end
