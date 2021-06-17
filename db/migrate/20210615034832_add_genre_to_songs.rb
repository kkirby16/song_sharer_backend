class AddGenreToSongs < ActiveRecord::Migration[6.0]
  def change
    add_reference :songs, :genre, null: false, foreign_key: true
  end
end
