# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

shakira = Artist.create(name: "Shakira", bio: "OMGGGGGG")
pop = Genre.create(name: "Pop")
hips = Song.create(name: "Hips don't lie", artist: shakira, genre: pop)

# 30.times do
#   Artist.create(name: Faker::Music.band, bio: Faker::TvShows::MichaelScott.quote )
# end
#
# 30.times do
#   Genre.create(name: Faker::Music.genre)
# end
#
# shakira = Song.create(name: "Hips Don't Lie", artist: Artist.create(name: "Shakira"))
# #
# # 30.times do
# #   Song.create(name: Faker::Music::GratefulDead.song, artist: "Beyonce")
# # end
