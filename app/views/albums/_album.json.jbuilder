json.extract! album, :id, :name, :description, :image_preview_url, :release_date, :created_at, :updated_at
json.url album_url(album, format: :json)
