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
    { title: "Airplane", numberInStock: 5, dailyRentalRate: 2, genre_id: comedy.id },
    { title: "The Hangover", numberInStock: 10, dailyRentalRate: 2, genre_id: comedy.id },
    { title: "Wedding Crashers", numberInStock: 15, dailyRentalRate: 2, genre_id: comedy.id }
  ]

  action = Genre.find_by(name: 'Action')
  Movie.create! [
    { title: "Die Hard", numberInStock: 5, dailyRentalRate: 2, genre_id: action.id },
    { title: "Terminator", numberInStock: 10, dailyRentalRate: 2, genre_id: action.id },
    { title: "The Avengers", numberInStock: 15, dailyRentalRate: 2, genre_id: action.id }
  ]

  romance = Genre.find_by(name: 'Romance')
  Movie.create! [
    { title: "The Notebook", numberInStock: 5, dailyRentalRate: 2, genre_id: romance.id },
    { title: "When Harry Met Sally", numberInStock: 10, dailyRentalRate: 2, genre_id: romance.id },
    { title: "Pretty Woman", numberInStock: 15, dailyRentalRate: 2, genre_id: romance.id }
  ]

  thriller = Genre.find_by(name: 'Thriller')
  Movie.create! [
    { title: "The Sixth Sense", numberInStock: 5, dailyRentalRate: 2, genre_id: thriller.id },
    { title: "Gone Girl", numberInStock: 10, dailyRentalRate: 2, genre_id: thriller.id },
    { title: "The Others", numberInStock: 15, dailyRentalRate: 2, genre_id: thriller.id }
  ]

  p "#{DateTime.now} Created Movies, (#{Movie.count} items)."
end
