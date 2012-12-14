class CreateBookLines < ActiveRecord::Migration
  def change
    create_table :book_lines do |t|
      t.string :capter
      t.string :captername
      t.integer :book_id

      t.timestamps
    end
  end
end
