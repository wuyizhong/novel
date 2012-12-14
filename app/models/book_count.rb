class BookCount < ActiveRecord::Base
  attr_accessible :month_counts, :week_counts, :day_counts,:user_id,:book_id

  belongs_to :book
  belongs_to :user
end
