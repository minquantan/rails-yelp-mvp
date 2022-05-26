# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Restaurant.destroy_all

category_types = %w[chinese italian japanese french belgian]

puts '---------------------------------Creating Restaurants----------------------------------------'
5.times do
  new_restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Quotes::Shakespeare.king_richard_iii_quote,
    category: category_types.sample
  )

  new_restaurant.save!
end

puts '------------------------------Mission Complete Powering Down---------------------------------'
