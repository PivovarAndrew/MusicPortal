class AddAlbumToTracks < ActiveRecord::Migration[6.1]
  def change
    add_column :tracks, :album_id, :bigint
  end
end
