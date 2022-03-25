module TranslationHelper
=begin
  SOURCE_LANG = "en"
  TARGET_LANG = "ru"

  def translate(text, options={})
    url = URI("https://translate.googleapis.com/translate_a/single?client=gtx&sl=#{SOURCE_LANG}&tl=#{TARGET_LANG}&dt=t&q=#{url_encode(text)}")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(url)
    result = JSON.parse http.request(request).read_body
    translatedText = result[0][0][0];
  end
=end
end
