class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.integer :id, null: false
      t.integer :artist_id, null: false
      t.integer :genre_id, null: false
      t.string :title, null: false
      t.decimal :price, null: false
      t.date :release_date
      t.text :description
      t.text :credits

      t.timestamps
    end
    add_index :albums, :artist_id
    add_index :albums, :genre_id
    #  add_index :albums, :title
  end
end
