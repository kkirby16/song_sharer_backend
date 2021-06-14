# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

30.times do
  Genre.create(name: Faker::Music.genre, description: Faker::Hipster.paragraph(sentence_count: 2))
end

3.times do
  Song.create(name: Faker::Hipster.words(number: 4).join(" "), artist: Faker::Hipster.words(number: 2).join, album: Faker::Music.unique.album, song_url: Faker::Internet.url, submitted_by: Faker::Name.unique.name, genre_id: Genre.all.sample.id)
end
