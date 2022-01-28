require_relative "connect_to_api_service"

class GetApiDataService < ConnectToApiService
  def responce
    @http.request(@request)
  end
end
