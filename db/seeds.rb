# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

i = 5
while i <= 12
  Size.create(number: i)
  i += 1
end

Shoe.create(name: "Pointed Toe Shoe", color: "red", style: "stilleto", description: "A fun and fancy 5 1/2 inch heel for some fun and class")

Shoe.create(name)
