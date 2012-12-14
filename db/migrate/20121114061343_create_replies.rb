class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :text
      t.integer :user_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
