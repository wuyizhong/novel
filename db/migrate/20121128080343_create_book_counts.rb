class CreateBookCounts < ActiveRecord::Migration
  def change
    create_table :bookcounts do |t|
      t.integer :month_counts
      t.integer :week_counts
      t.integer :day_counts
      t.integer :user_id
      t.integer :book_id
      t.timestamps
    end
  end
end
