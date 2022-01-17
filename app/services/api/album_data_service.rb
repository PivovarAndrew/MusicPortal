require_relative "raw_data_importer"
require_relative "raw_searched_hash_data_filter"
require_relative "albums_hash_data_parser_service"

module AlbumDataService
  class SearchAlbumData
    URL_TEMPLATE = "https://api.deezer.com/search?q="
    ALBUM_KEY = "album".freeze

    def initialize(search_param)
      @search_param = search_param
    end

    def search_album_data
      AlbumsHashDataParserService.new(albums_from_searched_data(data_from_request)).parse
    end

    private

    def data_from_request
      RawDataImporter.new(URL_TEMPLATE.concat(@search_param))
                     .import_data
    end

    def albums_from_searched_data(hash_data)
      RawSearchedHashDataFilter.new(hash_data, ALBUM_KEY).filter.uniq
    end
  end

  class AlbumDataExtracter
    def initialize(album_data)
      @album_data = album_data
    end

    def get_albums
      @album_data.map { |album_info| album_info[0][:album] }
    end

    def get_album_tracks
      @album_data.map { |album_info| album_info[0][:tracks] }
    end
  end
end
