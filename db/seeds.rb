user = User.create!(
  email: 'Apple@gmail.com',
  password: 'ApplePear'
)
20.times do
  Item.create!(
    user: user,
    name: Faker::FamilyGuy.quote
  )
end
puts "Seed Finished"
puts"#{User.count} users created"
puts "#{Item.count} items created"

# user = User.create!(
#   email: 'Apple@gmail.com',
#   password: 'ApplePear'
# )
# Item.create!(
#   user: user,
#   name: 'Apple'
# )
# puts "Seed Finished"
# puts"#{User.count} users created"
# puts "#{Item.count} items created"
