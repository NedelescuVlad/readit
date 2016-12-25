# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: "Vlad Nedelescu", email: "nedelescu.vlad@example.org", password: "itsasecret", password_confirmation: "itsasecret")
post = user.posts.create(title:"This is a sample title. It cannot be longer than 255 characters", body: "This is a sample body. It can be as large as it likes, but it has to be at least 50 characters long.")
Comment.create(body: "I really like this song! Can I use it in my video?", user: user, post: post)
