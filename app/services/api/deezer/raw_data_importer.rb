require_relative "get_api_data_service"

class RawDataImporter
  def initialize(url)
    @url = url
  end

  def import_data
    JSON.parse GetApiDataService.new(@url)
                                .responce
                                .read_body
  end
end
