require "get_api_data_service"

module AlbumDataService
  ALBUMS_JSON_QUERY = "properties ->> 'type' = 'album'"

  class SearchAlbumData
    URL_TEMPLATE = "https://api.deezer.com/search?q="

    def search_album_data(search_param)
      JSON.parse GetApiDataService.new(URL_TEMPLATE.concat(search_param))
        .responce
        .read_body
      #.where("properties ->> 'type' = 'album'")
    end
  end
end
