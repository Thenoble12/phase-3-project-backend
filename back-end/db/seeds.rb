puts "🌱 Seeding data..."

1.times do
   User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.first_name,
    email: Faker::Internet.email,
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

end

puts "🌱 Done seeding!"