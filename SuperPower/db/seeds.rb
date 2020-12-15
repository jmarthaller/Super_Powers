# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all Powers"
Power.destroy_all



puts "Creating Powers 👨‍👨‍👧‍👦"
30.times do 
  Power.create(name: Faker::Superhero.power, reason: Faker::Superhero.descriptor, rating: rand(1..5), already_exists: [true, false].sample)
end 


puts "Data seeded!"