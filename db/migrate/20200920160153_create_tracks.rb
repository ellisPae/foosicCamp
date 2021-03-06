class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.integer :artist_id, null: false
      t.integer :album_id
      t.string :title, null: false
      t.decimal :price, null: false
      t.date :release_date
      t.text :description
      t.text :credits

      t.timestamps
    end
    add_index :tracks, :artist_id
    add_index :tracks, :title
  end
end