# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts " Creating books"

5.times do
  Book.create(
    title: Faker::Book.title,
    author: Faker::Book.author,
    address: Faker::Address.city,
    category: Faker::Book.genre,
    user_id: (1..2).to_a.sample
    )
end

puts "done"


puts " Creating bookings"

5.times do
  Booking.create(
    user_id: (1..2).to_a.sample,
    book_id: (3..5).to_a.sample,
    start_date: Date.today,
    end_date: Date.new('2020-12-11')
    )
end

puts "done"

