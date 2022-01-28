class RawSearchedHashDataFilter
  DATA_KEY = "data"

  def initialize(raw_data_hash, item_key)
    @raw_data_hash = raw_data_hash
    @item_key = item_key
  end

  def filter
    @raw_data_hash[DATA_KEY].map do |item|
      item[@item_key]
    end
  end
end
