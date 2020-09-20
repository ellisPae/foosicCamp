class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :id, null: false
      t.string :email, null: false
      t.string :username, null: false,
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.integer :genre_id, null: false 
      t.string :location

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :username, unique: true
  end
end
