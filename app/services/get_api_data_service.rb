require "connect_to_api_service"

class GetApiDataService < ConnectToAPIService
  def initialize(url)
    super(url)
  end

  def responce
    @http.request(@request)
  end
end
