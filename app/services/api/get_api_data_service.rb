require_relative "connect_to_api_service"

class GetApiDataService < ConnectToApiService
  def initialize(url)
    super(url)
  end

  def responce
    @http.request(@request)
  end
end
