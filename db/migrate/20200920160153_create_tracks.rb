class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.integer :id, null: false
      t.integer :artist_id, null: false
      t.integer :album_id
      t.integer :genre_id, null: false
      t.string :title, null: false
      t.decimal :price, null: false
      t.date :release_date
      t.text :description
      t.text :credits

      t.timestamps
    end
    add_index :tracks, :artist_id
    add_index :tracks, :genre_id
    # add_index :tracks, :title
  end
end

# user(artist)   genre
# songs       genre
# albums      genre
