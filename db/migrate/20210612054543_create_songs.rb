class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.string :album
      t.string :song_url
      t.string :submitted_by
      t.integer :genre_id

      t.timestamps
    end
  end
end
