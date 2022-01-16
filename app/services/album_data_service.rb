require "get_api_data_service"

module AlbumDataService
  class SearchAlbumData
    URL_TEMPLATE = "https://deezerdevs-deezer.p.rapidapi.com/search?q="

    def search_album_data(search_param)
      GetAPIDataService.new(URL_TEMPLATE.concat(search_param))
    end
  end
end
