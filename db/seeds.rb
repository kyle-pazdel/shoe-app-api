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

Shoe.create(name: "Pointed Toe Shoe", color: "red", style: "stilleto", description: "A fun and fancy 5 1/2 inch heel for some fun and class", image: "https://www.thecelebritydresses.com/media/catalog/product/cache/1/image/363x/040ec09b1e35df139433887a97daa66f/w/o/women_s-red-sexy-pointed-toe-party-shoes-with-stiletto-heels.jpg")

Shoe.create(name: "Beach Heel", color: "beige", style: "wedge", description: "A fun and flirty casual heel, perfect for any occasion.", image: "https://images.dsw.com/is/image/DSWShoes/525807_252_ss_01?impolicy=qlt-medium-high&imwidth=640&imdensity=2")

Shoe.create(name: "Chunky-Heeled Boot", color: "Brown", style: "boot", description: "Look good and get the job done!", image: "https://images.dsw.com/is/image/DSWShoes/510037_231_ss_01?impolicy=qlt-medium-high&imwidth=640&imdensity=2")

i = 1
while i <= Shoe.all.length + 1
  i2 = 1
  while i2 <= Size.all.length + 1
    ShoeSize.create(shoe_id: i, size_id: i2)
    i2 += 1
  end
  i += 1
end
