class RemoveLikesFromSongs < ActiveRecord::Migration[6.0]
  def change
    remove_column :songs, :likes, :integer
  end
end
