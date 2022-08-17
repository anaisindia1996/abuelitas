Review.destroy_all
Appointment.destroy_all
Experience.destroy_all
User.destroy_all
puts "Creating users..."

10.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

puts "Users have been created!"

# @owners = User.all[0..4]


puts "Creating the Experiences..."

# @owners.each do |owner|
    experience = Experience.new(
      grandma_name: "Martha",
      activity_name: "Making meatballs",
      availability: "Everyday",
      description: "Have you ever wanted an Italian nonna to show you how to make meatballs? You have come to the right place! Martha is the meatball queen and loves sharing her passion with others.",
      images: "https://res.cloudinary.com/dg7mx0hnl/image/upload/v1660763141/matheus-frade-FTsSl_n7d4g-unsplash_et1zer.jpg",
      price: "60",
      latitude: "45",
      longitude: "-73",
      location: "Montreal"
    )
    experience.user = User.all[0]
    experience.save!
    puts "Experience, with id #{experience.id} has been created!"
# end

# @owners.each do |owner|
  experience = Experience.new(
    grandma_name: "Beatrice",
    activity_name: "Knitting",
    availability: "Tuesdays",
    description: "Learn to knit like a real abuela with Beatrice. She is a pro! Together you will make a winter beanie, a pillow and a jacket and enjoy a nice cup of tea while you become a knitting master!",
    images: "https://res.cloudinary.com/dg7mx0hnl/image/upload/v1660763321/rocknwool-y7NBxZuL-_w-unsplash_skgo7q.jpg",
    price: "70",
    latitude: "46",
    longitude: "-72",
    location: "Toronto"
  )
  experience.user = User.all[1]
  experience.save!
  puts "Experience, with id #{experience.id} has been created!"
# end

# @owners.each do |owner|
  experience = Experience.new(
    grandma_name: "Nancy",
    activity_name: "Have a chat",
    availability: "Everyday",
    description: "Do you wish you had a grandma to talk to? One to share your dreams with? Nancy is your abuela! She is a professional listener offers decades of life experience.",
    images: "https://res.cloudinary.com/dg7mx0hnl/image/upload/v1660663917/cdc-F98Mv9O6LfI-unsplash_kqthfz.jpg",
    price: "40",
    latitude: "48",
    longitude: "-70",
    location: "USA"
  )
  experience.user = User.all[2]
  experience.save!
  puts "Experience, with id #{experience.id} has been created!"
# end
