# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
Movie.destroy_all

puts "Creating 10 movies in the database"

10.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Quote.matz + rand(10000000).to_s,
    poster_url: "https://source.unsplash.com/featured/movie?id=#{rand(10000000)}",
    rating: Faker::Number.decimal(l_digits: 2)
  )
  movie.save!
end

puts "Finished"
