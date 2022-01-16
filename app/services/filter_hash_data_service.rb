class FilterHashDataService
  def filter_hash_data(hash, attribute, value)
    hash["data"].select { |key| key[attribute].equal? value }
  end
end
