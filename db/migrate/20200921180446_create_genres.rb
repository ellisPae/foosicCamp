class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :category, null: false
      
      t.timestamps
    end
    add_index: :genres, :type
  end
end



# Genres Table:
# genre1 = Genre.new(type:"Rock")
# genre2 = Genre.new(type:"HipHop")

# song1.genre.id

# song1 will belong to genre1
# user1 will belong to genre1
# albums will belong to genre1

# genre-joins Table => polymorphic
# has many to many associations

