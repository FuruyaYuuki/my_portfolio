User.create!(
   id: "4",
   email: 'user@example.com',
   nickname: 'user',
   password: 'password'
)


Admin.create!(
   id: "2",
   email: 'admin@example.com',
   password: 'password',
   name: 'admin'
)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
