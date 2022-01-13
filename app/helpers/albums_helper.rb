module AlbumsHelper
  ALLOWED_PROPERTIES_FOR_FILTER = %w[countries main_genre performer age_restrictions]

  def values_by_attribute(attribute_name)
    Album.all.select(attribute_name)
         .order("#{attribute_name} DESC")
         .map(&:"#{attribute_name}")
         .uniq
  end

  def correct_attribute(attribute_name)
    ALLOWED_PROPERTIES_FOR_FILTER.include? attribute_name
  end

  def most_popular_albums
    Album.all.last(5)
  end
end
