# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

n=1
30.times do
    user = User.create!(name: "user#{n}")
    n+=1
end

100.times do
    privatem = Private.create!(user_id: Random.rand(1..30), content: Faker::Pokemon.name)
end

100.times do
    receiver = Receivermessage.create!(private_id: Random.rand(1..100), user_id: Random.rand(1..30))
end