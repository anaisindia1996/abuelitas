Experience.destroy_all

20.times do Experience.create!(
  grandma_name: Faker::Name.female_first_name,
  activity_name: Faker::Educator.subject,
  availability: Faker::Date.in_date_period,
  description: Faker::Lorem.paragraphs,
  images: Faker::LoremPixel.image,
  price: Faker::Commerce.price,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude
) end
