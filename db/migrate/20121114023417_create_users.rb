class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_hash
      t.string :password_salt
      t.string :email
      t.string :fullname
      t.string :ic_card
      t.string :password_question
      t.string :password_answer

      t.timestamps
    end
  end
end
