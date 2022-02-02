# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurants = [{ name: 'Pitya', address: 'Antony', category: 'chinese' }, { name: 'Franco & Giacomo', address: 'Paris', category: 'italian'},
               { name: 'Leon de Bruxelle', address: 'Velizy', category: 'belgian' }, { name: 'Yokohama', address: 'Antony', category: 'japanese' },
               { name: 'La fourchette', address: 'Paris', category: 'french' }]

restaurants.each do |restaurant|
  new_restaurant = Restaurant.new(restaurant)
  new_restaurant.save
end
