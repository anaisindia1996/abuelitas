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
    images: "https://res.cloudinary.com/dbb3sntqk/image/upload/v1660677480/skiathos-greece-gUzsm9gqKBE-unsplash_amvtcp.jpg",
    price: "40",
    address: "61 Duluth Ave, Montreal"
  )
  experience.user = User.all[2]
  experience.save!
  puts "Experience, with id #{experience.id} has been created!"

  experience = Experience.new(
    grandma_name: "Juniper",
    activity_name: "Gentle mentorship",
    description: "Juniper has lived many lives! From being one of the first female investment bankers on Wall St to becoming a local florist, she's a wealth of advice and mentorship.",
    images: "https://res.cloudinary.com/dbb3sntqk/image/upload/v1660935213/tracey-hocking-XUoDYDfdTGg-unsplash_u2lbti.jpg",
    price: "60",
    address: "3000 Ave du Parc, Montreal"
  )

  experience.user = User.all[3]
  experience.save!
  puts "Experience, with id #{experience.id} has been created!"

  experience = Experience.new(
    grandma_name: "Janet",
    activity_name: "Bake a cake from scratch",
    description: "Come over to Janet's for an afternoon of baking and fun chats. Janet is known for her beautiful and delicious 3 tiered cakes and wants to share her expertise with you!",
    images: "https://res.cloudinary.com/dbb3sntqk/image/upload/v1660935662/katie-rosario-QNyRp21hb5I-unsplash_xqmrga.jpg",
    price: "30",
    address: "3004 Rue St Denis, Montreal"
  )

  experience.user = User.all[4]
  experience.save!
  puts "Experience, with id #{experience.id} has been created!"

  experience = Experience.new(
    grandma_name: "Madeleine",
    activity_name: "Tarot and cards",
    description: "Do you like cats and want to know your future? Madeleine is a tarot maestro and will teach you all her tricks. She also has an adorable cat called Maurice.",
    images: "https://res.cloudinary.com/dbb3sntqk/image/upload/v1660935735/viva-luna-studios-0-7oZdFHf-I-unsplash_srprzq.jpg",
    price: "20",
    address: "300 Boulevard St Laurent, Montreal"
  )

  experience.user = User.all[5]
  experience.save!
  puts "Experience, with id #{experience.id} has been created!"

  experience = Experience.new(
    grandma_name: "Anne",
    activity_name: "Jam-making",
    description: "Spend the afternoon learning how to make jam from scratch with Anne! You'll be making about 12 small jars of jam to take home with you. Everything will be provided!",
    images: "https://res.cloudinary.com/dg7mx0hnl/image/upload/v1660663917/cdc-F98Mv9O6LfI-unsplash_kqthfz.jpg",
    price: "100",
    address: "1055 Rue de la Gauchetière est, Montreal"
  )
  experience.user = User.all[6]
  experience.save!
  puts "Experience, with id #{experience.id} has been created!"

  experience = Experience.new(
    grandma_name: "Beverly",
    activity_name: "Arts and Crafts",
    description: "A fun afternoon of arts and crafts. Beverly will teach you decoupage, stitching and some water-colour painting.",
    images: "https://res.cloudinary.com/dbb3sntqk/image/upload/v1660935940/annie-spratt-TywjkDHf0Ps-unsplash_xyidyw.jpg",
    price: "45",
    address: "5333 Ave Casgrain, Montreal"
  )
  experience.user = User.all[7]
  experience.save!
  puts "Experience, with id #{experience.id} has been created!"

  experience = Experience.new(
    grandma_name: "Gladys",
    activity_name: "Story-time",
    description: "Come over and hear some of Gladys' incredible stories. She travelled all over the world with the circus as a kid so she's got many adventures to share",
    images: "https://res.cloudinary.com/dbb3sntqk/image/upload/v1660936096/eduardo-barrios-pri_qdvCxTc-unsplash_xkpm2z.jpg",
    price: "15",
    address: "6000 ave Casgrain, Montreal"
  )
  experience.user = User.all[8]
  experience.save!
  puts "Experience, with id #{experience.id} has been created!"
# end
