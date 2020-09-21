class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.integer :id, null: false
      t.string :type, null: false
      
      t.timestamps
    end
    add_index: :genres, :type
  end
end



# Genres Table:
# genre1 = Genre.new(type:"Rock")
# genre2 = Genre.new(type:"HipHop")


# song1 will belong to genre1
# user1 will belong to 

# genre1 belongs to song1
# gnere1 belong to album1
