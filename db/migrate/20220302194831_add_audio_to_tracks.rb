class AddAudioToTracks < ActiveRecord::Migration[6.1]
  def change
    add_column :tracks, :audio_link, :string
  end
end
