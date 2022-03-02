require_relative "album_tracks_service"

class AlbumsHashDataParserService
  def initialize(raw_albums)
    @raw_albums = raw_albums
  end

  def parse
    @raw_albums.map do |album_info|
      raw_album_tracks = get_album_tracks(album_info)
      [album: parse_album(raw_album_tracks, album_info),
       tracks: parse_album_tracks(raw_album_tracks, album_info)]
    end
  end

  private

  def get_album_tracks(album_info)
    AlbumTracksService.new(album_info["tracklist"]).get_tracks
  end

  def parse_album(raw_album_tracks, album_info)
    Album.new(
      name: album_info["title"],
      image_preview_url: album_info["cover_xl"],
      performer: raw_album_tracks.sample["artist"]["name"],
    )
  end

  def parse_album_tracks(raw_album_tracks, album_info)
    raw_album_tracks.map do |track_info|
      Track.new(
        name: track_info["title"],
        source_link: track_info["link"],
        duration: Time.at(track_info["duration"]).utc.strftime("%H:%M:%S"),
        tags: "#{album_info["title"]}, #{track_info["title"]}",
        preview_picture: album_info["cover_xl"],
      )
    end
  end
end
