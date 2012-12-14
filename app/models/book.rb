class Book < ActiveRecord::Base
  attr_accessible :bookname, :clickcount, :describe, :picpath, :textpath, :wordqty, :tpye

  belongs_to :author
  has_many :book_assesses
  has_many :book_lines
  has_many :book_counts

  validates :describe ,:length =>{:maximum =>100,:too_long =>"toolonggg" }
end
