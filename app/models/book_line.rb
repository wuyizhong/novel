class BookLine < ActiveRecord::Base
  attr_accessible :book_id, :capter, :captername

  belongs_to :book
end
