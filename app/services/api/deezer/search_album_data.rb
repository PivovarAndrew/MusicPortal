require_relative "raw_data_importer"
require_relative "raw_searched_hash_data_filter"
require_relative "albums_hash_data_parser_service"
require "erb"

module AlbumDataService
  class SearchAlbumData
    include ERB::Util
    URL_TEMPLATE = "https://api.deezer.com/search?q=".freeze
    ALBUM_KEY = "album".freeze

    def initialize(search_param)
      @search_param = url_encode(search_param)
    end

    def search_album_data
      AlbumsHashDataParserService.new(albums_from_searched_data(data_from_request)).parse
    end

    private

    def data_from_request
      RawDataImporter.new(URL_TEMPLATE + @search_param)
                     .import_data
    end

    def albums_from_searched_data(hash_data)
      RawSearchedHashDataFilter.new(hash_data, ALBUM_KEY).filter.uniq
    end
  end
end
