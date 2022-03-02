class AlbumTracksService
  DATA_KEY = "data"

  def initialize(album_tracks_url)
    @album_tracks_url = album_tracks_url
  end

  def get_tracks
    RawDataImporter.new(@album_tracks_url)
                   .import_data[DATA_KEY]
  end
end
