class Author < ActiveRecord::Base
  attr_accessible :hissays, :name

  has_many :books
end
