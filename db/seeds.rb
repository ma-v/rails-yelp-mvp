require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = []
5.times do restaurants_attributes << {
    name:         Faker::Restaurant.name,
    address:      '7 Boundary St, London E2 7JE',
    category:     ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber.phone_number
  }
end
Restaurant.create!(restaurants_attributes)
puts "Finished! #{Restaurant.count} restaurant generated! "
