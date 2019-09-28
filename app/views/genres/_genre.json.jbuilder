json._id genre&.id.to_s
json.name genre&.name
json.url genre_url(genre, format: :json)
