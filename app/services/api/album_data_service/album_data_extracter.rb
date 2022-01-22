module AlbumDataService
  class AlbumDataExtracter
    def initialize(album_data)
      @album_data = album_data
    end

    def albums
      @album_data.map { |album_info| album_info[0][:album] }
    end

    def album_tracks
      @album_data.map { |album_info| album_info[0][:tracks] }
    end
  end
end
