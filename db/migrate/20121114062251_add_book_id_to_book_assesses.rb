class AddBookIdToBookAssesses < ActiveRecord::Migration
  def change
  	add_column :book_assesses ,:book_id,:integer
  end
end
