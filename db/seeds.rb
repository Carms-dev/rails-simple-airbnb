require 'faker'

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

9.times do
  flat_attr = {
    name: Faker::Hacker.say_something_smart,
    address: Faker::Address.full_address,
    description: Faker::Coffee.notes,
    price_per_night: rand(50..100),
    number_of_guests: rand(1..5)
  }
  Flat.create!(flat_attr)
end

puts 'Finished!'
