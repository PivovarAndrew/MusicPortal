class RemoveAlbumGenres < ActiveRecord::Migration[6.1]
  def change
    drop_table :album_genres
  end
end
