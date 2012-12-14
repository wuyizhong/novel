class CreateBookAssesses < ActiveRecord::Migration
  def change
    create_table :book_assesses do |t|
      t.string :text
      t.integer :user_id
      t.integer :book_id
      t.timestamps
    end
  end
end
