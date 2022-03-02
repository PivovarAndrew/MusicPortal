module AlbumDataService
  class AlbumDataExtracter
    def initialize(album_data)
      @album_data = album_data
    end

    def albums
      albums_without_tracks.each_with_index do |searched_album, counter|
        searched_album.tracks = album_tracks[counter]
      end
    end

    def albums_without_tracks
      @album_data.map { |album_info| album_info[0][:album] }
    end

    private

    def album_tracks
      @album_data.map { |album_info| album_info[0][:tracks] }
    end
  end
end
