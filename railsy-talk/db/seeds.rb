# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

heath = User.new(username: "heath", password: "password")
heath.save

Pet.create!(user_id: 1, name: "Edgar", age: 10, animal_type: "cat", image: "https://hrexach.files.wordpress.com/2014/10/bc18.jpg")
Pet.create!(user_id: 1, name: "Nudgel", age: 10, animal_type: "cat", image: "http://i.dailymail.co.uk/i/pix/2013/03/01/article-0-186062B9000005DC-296_634x363.jpg")
Pet.create!(user_id: 1, name: "Barry", age: 7, animal_type: "capybara", image: "http://thumbs.media.smithsonianmag.com//filer/2e/73/2e738d22-a273-4a77-a76e-c5486b80c309/02_07_2014_capybara_monkey.jpg__800x600_q85_crop.jpg")

# Otis http://www.dog-obedience-training-review.com/sites/default/files/Labrador-Retriever-Puppies.jpg
# Izzy http://i.imgur.com/jzgc8.jpg
# Zena http://thefunnydogpictures.com/wp-content/uploads/2015/04/german-shepherd-pitbull-mix-puppies.jpg
# Angel https://www.petsworld.in/blog/wp-content/uploads/2014/06/German-shepherd-dog-hd-wallpapers-beautiful-desktop-images-widescreen.jpg