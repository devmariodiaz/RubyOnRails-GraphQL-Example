# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

200.times do
    fn = Faker::Name.first_name
    ln = Faker::Name.last_name
    is_alive = rand(2) == 1 ? true : false
    yob = rand(1984..2020)
    Author.create({first_name: fn, last_name: ln, yob: yob, is_alive: is_alive }) 
end