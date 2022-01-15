require "uri"
require "net/http"
require "openssl"

module ConnectToAPIService
  def initialize(url)
    @url = url
  end

  def set_connection
    @http = Net::HTTP.new(@url.host, @url.port)
    @http.use_ssl = true
    @http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  end

  def set_request
    @request = Net::HTTP::Get.new(@url)
    @request["x-rapidapi-host"] = Rails.application.credentials.x_rapid_api[:host]
    @request["x-rapidapi-key"] = Rails.application.credentials.x_rapid_api[:key]
  end
end
