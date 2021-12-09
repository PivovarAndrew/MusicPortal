json.extract! track, :id, :name, :description, :source_link, :release_date, :duration, :countries, :tags, :main_genre, :related_genres, :performer, :preview_picture, :age_restrictions, :created_at, :updated_at
json.url track_url(track, format: :json)
