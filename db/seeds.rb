# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Start"

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

puts 'Creating Mojito...'
file = URI.open('https://images.unsplash.com/photo-1599021456807-25db0f974333?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=979&q=80')
mojito = Cocktail.create!(name: 'Mojito')
mojito.photo.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
puts 'Finished!'

Ingredient.create!(name: 'lemon')
Ingredient.create!(name: 'ice')
Ingredient.create!(name: 'mint leaves')

cocktail = Cocktail.last.id
ingredient = Ingredient.last.id
Dose.create!(description: '6 leaves', cocktail_id: cocktail, ingredient_id: ingredient)

puts "Done"