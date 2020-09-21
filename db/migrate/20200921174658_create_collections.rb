class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.integer :id
      t.integer :user_id

      t.timestamps
    end
    add_index :collections, :user_id
  end
end
