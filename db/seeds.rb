# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create!(title:  "Example User",
             author: "example@railstutorial.org",
             #publisher: "Example",
             genre: "Ex")

39.times do |n|
  title  = Faker::Book.title
  author = Faker::Book.author
  #publisher = Faker::Book.publisher
  genre = Faker::Book.genre
  Book.create!(title:  title,
               author: author,
               #publisher:   publisher,
               genre: genre)
end