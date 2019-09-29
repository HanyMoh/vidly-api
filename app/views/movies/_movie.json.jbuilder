json._id movie&.id&.to_s
json.title movie&.title
json.genre do
  json._id movie&.genre&.id&.to_s
  json.name movie&.genre&.name
end
json.numberInStock movie&.numberInStock.to_s
json.dailyRentalRate movie&.dailyRentalRate

json.url movie_url(movie, format: :json)
