json._id movie&.id&.to_s
json.title movie&.title
json.genre do
  json._id movie&.genre&.id&.to_s
  json.name movie&.genre&.name
end
json.numberInStock movie&.number_in_stock.to_s
json.dailyRentalRate movie&.daily_rental_rate

json.url movie_url(movie, format: :json)
