# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
15.times do |n|
    name = Faker::Games::Pokemon.name
    email = Faker::Internet.email
    password = "password"
    User.create!(name: name,
                 email: email,
                 password: password,
                 password_confirmation: password,
                 )
  end

  User.create!(name:  "adminhero",
             email: "adminhero@gmail.com",
             password:  "11111111",
             password_confirmation: "11111111",
             admin: true)


             Label.create([
                       { name: "Self study" },
                       { name: "Test" },
                       { name: "Question" },
                       { name: "develop" },
                       ])
