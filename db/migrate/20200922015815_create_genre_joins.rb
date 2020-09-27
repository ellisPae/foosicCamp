class CreateGenreJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :genre_joins do |t|
      t.integer :genre_id, null: false
      t.references :genreable, polymorphic: true

      t.timestamps
    end
    add_index :genre_joins, [:genreable_id, :genreable_type]
  end
end
