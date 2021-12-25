# Class required for search injection
class SearchService
  WASTE_ATTRIBUTES = %w[id created_at updated_at description image_preview_url]

  def search_album(text)
    albums = Album.all
    albums[0].attribute_names.each do |attribute|
      next if WASTE_ATTRIBUTES.include? attribute

      albums.where "LOWER(#{attribute}) LIKE LOWER('%#{text}%')"
    end
  end
end
