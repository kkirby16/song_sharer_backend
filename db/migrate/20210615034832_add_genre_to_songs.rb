class AddGenreToSongs < ActiveRecord::Migration[6.0]
  def change
    add_reference :songs, :genre, foreign_key: true
  end
end
