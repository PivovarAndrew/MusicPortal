require_relative "get_api_data_service"
require_relative "../filter_hash_data_service"

module AlbumDataService
  ALBUMS_JSON_QUERY = "properties ->> 'type' = 'album'"
  TYPE_FILTER_ATTRIBUTE = "type"
  TYPE_FILTER_PARAM = "album"

  class SearchAlbumData
    URL_TEMPLATE = "https://api.deezer.com/search?q="

    def search_album_data(search_param)
      hash_data = JSON.parse GetApiDataService.new(URL_TEMPLATE.concat(search_param))
                               .responce
                               .read_body
      FilterHashDataService.new.filter_hash_data(hash_data, TYPE_FILTER_ATTRIBUTE, TYPE_FILTER_PARAM)
      #.where("properties ->> 'type' = 'album'")
    end
  end
end
