class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :bookname
      t.integer :wordqty
      t.string :describe
      t.string :textpath
      t.string :picpath
      t.integer :clickcount

      t.timestamps
    end
  end
end
