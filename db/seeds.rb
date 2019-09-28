if Genre.count == 0
  Genre.create! [
    { name: 'Comedy' },
    { name: 'Action' },
    { name: 'Romance' },
    { name: 'Thriller' }
  ]
  p "#{DateTime.now} Created Genres, (#{Genre.count} items)."
end

if Movie.count == 0
  comedy = Genre.find_by(name: 'Comedy')
  Movie.create! [
    { title: "Airplane", number_in_stock: 5, daily_rental_rate: 2, genre_id: comedy.id },
    { title: "The Hangover", number_in_stock: 10, daily_rental_rate: 2, genre_id: comedy.id },
    { title: "Wedding Crashers", number_in_stock: 15, daily_rental_rate: 2, genre_id: comedy.id }
  ]

  action = Genre.find_by(name: 'Action')
  Movie.create! [
    { title: "Die Hard", number_in_stock: 5, daily_rental_rate: 2, genre_id: action.id },
    { title: "Terminator", number_in_stock: 10, daily_rental_rate: 2, genre_id: action.id },
    { title: "The Avengers", number_in_stock: 15, daily_rental_rate: 2, genre_id: action.id }
  ]

  romance = Genre.find_by(name: 'Romance')
  Movie.create! [
    { title: "The Notebook", number_in_stock: 5, daily_rental_rate: 2, genre_id: romance.id },
    { title: "When Harry Met Sally", number_in_stock: 10, daily_rental_rate: 2, genre_id: romance.id },
    { title: "Pretty Woman", number_in_stock: 15, daily_rental_rate: 2, genre_id: romance.id }
  ]

  thriller = Genre.find_by(name: 'Thriller')
  Movie.create! [
    { title: "The Sixth Sense", number_in_stock: 5, daily_rental_rate: 2, genre_id: thriller.id },
    { title: "Gone Girl", number_in_stock: 10, daily_rental_rate: 2, genre_id: thriller.id },
    { title: "The Others", number_in_stock: 15, daily_rental_rate: 2, genre_id: thriller.id }
  ]

  p "#{DateTime.now} Created Movies, (#{Movie.count} items)."
end
