# Class required for search injection
class SearchService
  REQUIRED_ATTRIBUTES = %w[name release_date performer].freeze

  def search_album(text)
    Album.where(REQUIRED_ATTRIBUTES.map { |attributes| "#{attributes}::text ILIKE :searched_text" }.join(" OR "), searched_text: "%#{text}%")
  end
end
