class AddTypeToBooks < ActiveRecord::Migration
  def change
  	add_column :books,:tpye,:string
  end
end
