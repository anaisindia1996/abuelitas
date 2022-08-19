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


# Creating the tags
names = %w[Cooking Knitting Chatting Dancing Storytelling]

puts "Creating tags..."
names.each do |name|
  Tag.create!(name: name)
end
# To be done: adding the tags within the experience??

puts "Creating the Experiences..."

# @owners.each do |owner|
experience = Experience.new(
  grandma_name: "Martha",
  activity_name: "Making meatballs",
  description: "Have you ever wanted an Italian nonna to show you how to make meatballs? You have come to the right place! Martha is the meatball queen and loves sharing her passion with others.",
  images: "https://res.cloudinary.com/dg7mx0hnl/image/upload/v1660763141/matheus-frade-FTsSl_n7d4g-unsplash_et1zer.jpg",
  price: "60",
  address: "2205 Saint-Marc St, Montréal"
)
experience.user = User.all[0]
experience.save!
puts "Experience, with id #{experience.id} has been created!"
# end

# @owners.each do |owner|
experience = Experience.new(
  grandma_name: "Beatrice",
  activity_name: "Knitting",
  description: "Learn to knit like a real abuela with Beatrice. She is a pro! Together you will make a winter beanie, a pillow and a jacket and enjoy a nice cup of tea while you become a knitting master!",
  images: "https://res.cloudinary.com/dg7mx0hnl/image/upload/v1660763321/rocknwool-y7NBxZuL-_w-unsplash_skgo7q.jpg",
  price: "70",
  address: "7109 Rue Garnier, Montreal"
)
experience.user = User.all[1]
experience.save!
puts "Experience, with id #{experience.id} has been created!"
# end

# @owners.each do |owner|
experience = Experience.new(
  grandma_name: "Nancy",
  activity_name: "Have a chat",
  description: "Do you wish you had a grandma to talk to? One to share your dreams with? Nancy is your abuela! She is a professional listener offers decades of life experience.",
  images: "https://res.cloudinary.com/dg7mx0hnl/image/upload/v1660663917/cdc-F98Mv9O6LfI-unsplash_kqthfz.jpg",
  price: "40",
  address: "61 Duluth Ave, Montreal"
)
experience.user = User.all[2]
experience.save!
puts "Experience, with id #{experience.id} has been created!"
# end


puts "Show time!"
