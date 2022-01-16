require "uri"
require "net/http"
require "openssl"

class ConnectToApiService
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
    @request["deezerapi-host"] = Rails.application.credentials.deezer_api[:host]
    @request["deezerapi-key"] = Rails.application.credentials.deezer_api[:key]
  end
end
