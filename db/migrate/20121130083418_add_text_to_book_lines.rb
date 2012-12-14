class AddTextToBookLines < ActiveRecord::Migration
  def change
    add_column :book_lines, :text, :string
  end
end
