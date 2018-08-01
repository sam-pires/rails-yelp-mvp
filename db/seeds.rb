# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0492893837',
    category:     'belgian'
  },
  {
    name:         'Sushi Fast',
    address:      '8 Rue Creuson, 34900 Chambery',
    phone_number: '0592433837',
    category:     'japanese'
  },
  {
    name:         'La bouillabaisse',
    address:      'Avenue du vieux port, 13000 Marseille',
    phone_number: '0334893837',
    category:     'italian'
  },
  {
    name:         'Raviolo',
    address:      '3 Canal saint martin, 75013 Paris',
    phone_number: '0897453232',
    category:     'chinese'
  },
  {
    name:         'La belle marmitte',
    address:      '77 rue de calvados, 28799 Bréchet',
    phone_number: '0492898080',
    category:     'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
