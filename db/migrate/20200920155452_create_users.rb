class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.string :location, null: false
      t.string :artist_name, null: false
      t.string :genre, null: false


      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :username, unique: true
    add_index :users, :session_token, uniue: true
  end

end



# if user is_fan? => artist_name
# col: also_fan?:boolean