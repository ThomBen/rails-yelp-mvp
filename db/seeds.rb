# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '0555678273', category: 'italian' }
dishcold = { name: 'Dishcold', address: '8 Boundary St, London E2 7JE', phone_number: '0555678273', category: 'italian' }
dishhot = { name: 'Dishhot', address: '9 Boundary St, London E2 7JE', phone_number: '0555678273', category: 'french' }
dishwarm = { name: 'Dishwarm', address: '10 Boundary St, London E2 7JE', phone_number: '0555678273', category: 'japanese' }
dishtacos = { name: 'Dishtacos', address: '11 Boundary St, London E2 7JE', phone_number: '0555678273', category: 'belgian' }
dishmexican = { name: 'Dishmexican', address: '12 Boundary St, London E2 7JE', phone_number: '0555678273', category: 'chinese' }

[dishoom, dishcold, dishhot, dishwarm, dishtacos, dishmexican].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
