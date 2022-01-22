module AlbumDataService
  class SearchAlbumData
    URL_TEMPLATE = "https://api.deezer.com/search?q=".freeze
    ALBUM_KEY = "album".freeze

    def initialize(search_param)
      @search_param = search_param
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
