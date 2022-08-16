Experience.destroy_all
User.destroy_all
puts "start creating the users..."

10.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

puts "Users have been created!"

@owners = User.all[0..4]


puts "start creating the Experiences..."

@owners.each do |owner|
  5.times do
    experience = Experience.new(
      grandma_name: Faker::Name.female_first_name,
      activity_name: Faker::Educator.subject,
      availability: Faker::Date.in_date_period,
      description: Faker::Lorem.paragraphs,
      images: Faker::LoremPixel.image,
      price: Faker::Commerce.price,
      latitude: Faker::Address.latitude,
      longitude: Faker::Address.longitude,
      location: Faker::Address.city
    )
    experience.user = owner
    experience.save!
    puts "Experience, with id #{experience.id} has been created!"
  end
end
