class GetAPIDataService < ConnectToAPIService
  def initialize(url)
    super(url)
  end

  def responce
    @http.request(@request)
  end
end
