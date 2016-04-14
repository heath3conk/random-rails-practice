# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

heath = User.new(username: "heath", password: "password")
heath.save

Pet.create!(user_id: 1, name: "Edgar", age: 10, animal_type: "cat", image: "edgar.jpg")
Pet.create!(user_id: 1, name: "Nudgel", age: 10, animal_type: "cat", image: "nudgel.jpg")
Pet.create!(user_id: 1, name: "Some Fish", age: 7, animal_type: "giant fish", image: "random_fish.jpg")
