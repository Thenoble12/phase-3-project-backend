puts "🌱 Seeding data..."

1.times do
   User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.first_name,
    email: Faker::Internet.email,
    # password: Faker::Alphanumeric.alpha(number: 10)
    # user_id: Faker::Number.decimal_part(digits: 2)  
  )
end

8.times do  

  user = User.order('RANDOM()').first

  task = Task.create(
    name: Faker::Lorem.sentence,
    details: Faker::Lorem.sentences,
    category: Faker::Number.between(from: 1, to: 4),    
    user_id: user.id,  
  )
  
  # create between 1 and 5 reviews for each game
#   rand(1..5).times do
#     # get a random user for every review
#     # https://stackoverflow.com/a/25577054
#     user = User.order('RANDOM()').first

#     # A review belongs to a game and a user, so we must provide those foreign keys
#     Review.create(
#       score: rand(1..10),
#       comment: Faker::Lorem.sentence,
#       game_id: game.id,
#       user_id: user.id
#     )
#   end
end

puts "🌱 Done seeding!"