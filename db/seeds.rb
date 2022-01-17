# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ContextTable.create([
  {
    word: 'Hello',
    message: 'Welcome to StationFive.',
  },
  {
    word: 'Hi',
    message: 'Welcome to StationFive.',
  },
  {
    word: 'Goodbye',
    message: 'Thank you, see you around.',
  },
  {
    word: 'Bye',
    message: 'Thank you, see you around.',
  },
  {
    word: 'No Context',
    message: 'Sorry, I don’t understand.',
  }
])