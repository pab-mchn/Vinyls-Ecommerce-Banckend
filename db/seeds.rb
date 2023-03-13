# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#create categories
category_names = ["Blues", "Funk", "Jazz", "Soul"]

#check if category exist or create
category_names.each do |name|
  Category.find_or_create_by(name: name)
end

Blues = Category.find_by(name: "Blues")
Funk = Category.find_by(name: "Funk")
Jazz = Category.find_by(name: "Jazz")
Soul = Category.find_by(name: "Soul")

#Funk Vinyls
Vinyl.find_or_create_by(name: 'Fire On The Bayou', band: 'the Meters', price:12, image: "https://res.cloudinary.com/pabcode/image/upload/v1678709426/vinyls-api/Meters_fire_on_the_bayou_pluwgi.jpg",  category: Funk)
#blues Vinyls
#jazz Vinyls
#soul Vinyls