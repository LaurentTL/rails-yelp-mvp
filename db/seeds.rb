# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", category: "chinese", address: "7 Boundary St, London E2 7JE" }
pizza_east = { name: "Pizza East", category: "chinese", address: "56A Shoreditch High St, London E1 6PQ" }
surpriz = { name: "surpriz", category: "chinese", address: "oberkampf" }
mcdo = { name: "mcdo", category: "chinese", address: "menimontant" }
pitaya = { name: "pitaya", category: "chinese", address: "oberkampf" }

[dishoom, pizza_east, surpriz, mcdo, pitaya].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
