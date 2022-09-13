# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create a main sample user.
User.create!(name:  'Example',
  last_name: 'User',
  email: 'example@udep.org',
  password:              'foobar',
  password_confirmation: 'foobar',
  admin: true)

# Generate a bunch of additional users.
99.times do |n|
  name = Faker::Name.name
  last_name = Faker::Name.last_name
  email = "example-#{n+1}@udep.org"
  password = 'password'
  User.create!(name:  name,
      last_name: last_name,
      email: email,
      password:              password,
      password_confirmation: password)
end
