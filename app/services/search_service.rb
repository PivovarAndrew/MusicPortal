# Class required for search injection
class SearchService
  WASTE_ATTRIBUTES = %w[id created_at updated_at description image_preview_url].freeze

  def search_album(text)
    albums = Album.all
    results = []
    albums[0].attribute_names.each do |attribute|
      next if WASTE_ATTRIBUTES.include? attribute

      results.push albums.where "#{attribute}::text ILIKE '%#{text}%'"
    end
    results.flatten!
  end
end
