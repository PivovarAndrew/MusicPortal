require "uri"
require "net/http"
require "openssl"

class ConnectToAPIService
  def initialize(url)
    @url = URI(url)
    set_connection
    set_request
  end

  protected

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
