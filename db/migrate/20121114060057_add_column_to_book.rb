class AddColumnToBook < ActiveRecord::Migration
  def change
  	add_column :books,:author_id,:integer
  	add_column :books,:assess_id,:integer
  end
  
end
