# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
num = 10
num.times do |_i|
  pokemon = Faker::Games::Pokemon.unique.name
  Card.create(title: pokemon, description: pokemon)
end
cnt = 0
while cnt < num
  i = rand(1...num + 1)
  j = rand(1...num + 1)
  redo if i.eql?(j)

  redo if Edge.where(parent_id: i, child_id: j).exists?
  redo if Edge.where(parent_id: j, child_id: i).exists?
  Edge.create(parent_id: j, child_id: i)

  cnt += 1
end
