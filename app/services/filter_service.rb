class FilterService
  def filter_albums(attribute_name, selected_value)
    Album.all.where("#{attribute_name}": "#{selected_value}")
  end
end
