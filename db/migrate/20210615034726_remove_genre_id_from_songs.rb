class RemoveGenreIdFromSongs < ActiveRecord::Migration[6.0]
  def change
    remove_column :songs, :genre_id, :integer
  end
end
