# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'open-uri'


User.destroy_all
user1 = User.create!(email: "ellis.pae@appacademy.com", username: "quest", password: "coolbeans", artist_name: "3pac", location: "NYC")
user2 = User.create!(email: "eugene.moon@appacademy.com", username: "barista", password: "coolbeans", artist_name: "high fructose", location: "NYC")
user3 = User.create!(email: "justin.cho@appacademy.com", username: "justinTime", password: "coolbeans", artist_name: "Then Again", location: "Los Angelos, CA")
user3_pic = open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/ein.jpg')
user3.pic.attach(io: file, filename: 'thenAgain.jpg')


Album.destroy_all
album1 = Album.create!(artist_id: user1.id, title: "When Can This Be Over?", price: 10.00)
album2 = Album.create!(artist_id: user1.id, title: "I Miss Sleep", price: 15.00)

album3 = Album.create!(artist_id: user2.id, title: "Caffeine Deficit", price: 11.00)
album4 = Album.create!(artist_id: user2.id, title: "Caffeine Overload", price: 14.00)

album5 = Album.create!(artist_id: user3.id, title: "Rosewood", price: 15.00)
album6 = Album.create!(artist_id: user3.id, title: "Mosaic", price: 20.00)



Track.destroy_all
track1 = Track.create!(artist_id: user1.id, album_id: album1.id, title: "Sennacy Blues", price: 1.00)
track2 = Track.create!(artist_id: user1.id, title: "Next Tattoo", price: 1.50)

track3 = Track.create!(artist_id: user2.id, album_id: album3.id, title: "So Sleepy", price: 1.00)
track4 = Track.create!(artist_id: user2.id, album_id: album4.id, title: "Lets Go!", price: 1.00)

track5 = Track.create!(artist_id: user3.id, album_id: album5.id, title: "Just Chillin Homes", price: 1.00)
track6 = Track.create!(artist_id: user3.id, title: "Midnight Run", price: 2.00)


Genre.destroy_all
electronic = Genre.create!(category: "electronic")
metal = Genre.create!(category: "metal")
rock = Genre.create!(category: "rock")
alternative = Genre.create!(category: "alternative")
hiphop = Genre.create!(category: 'hip-hop/rap')
experimental = Genre.create!(category: 'experimental')
punk = Genre.create!(category: 'punk')
pop = Genre.create!(category: "pop")
ambient = Genre.create!(category: "ambient")
world = Genre.create!(category: "world")
jazz = Genre.create!(category: "jazz")
acoustic = Genre.create!(category: "acoustic")
funk = Genre.create!(category: "funk")
rb_soul = Genre.create!(category: "r&b/soul")
classical = Genre.create!(category: "classical")
country = Genre.create!(category: "country")
blues = Genre.create!(category: "blues")
latin = Genre.create!(category: "latin")


GenreJoin.destroy_all
# artists
GenreJoin.create!(genre_id: blues.id, genreable_id: user1.id, genreable_type: "User")
GenreJoin.create!(genre_id: alternative.id, genreable_id: user1.id, genreable_type: "User")
GenreJoin.create!(genre_id: experimental.id, genreable_id: user1.id, genreable_type: "User")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2.id, genreable_type: "User")
GenreJoin.create!(genre_id: rb_soul.id, genreable_id: user2.id, genreable_type: "User")
GenreJoin.create!(genre_id: pop.id, genreable_id: user3.id, genreable_type: "User")
GenreJoin.create!(genre_id: alternative.id, genreable_id: user3.id, genreable_type: "User")
GenreJoin.create!(genre_id: acoustic.id, genreable_id: user3.id, genreable_type: "User")

# albums
GenreJoin.create!(genre_id: blues.id, genreable_id: album1.id, genreable_type: "Album")
GenreJoin.create!(genre_id: rock.id, genreable_id: album1.id, genreable_type: "Album")
GenreJoin.create!(genre_id: experimental.id, genreable_id: album2.id, genreable_type: "Album")
GenreJoin.create!(genre_id: electronic.id, genreable_id: album2.id, genreable_type: "Album")

GenreJoin.create!(genre_id: hiphop.id, genreable_id: album3.id, genreable_type: "Album")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: album4.id, genreable_type: "Album")
GenreJoin.create!(genre_id: rb_soul.id, genreable_id: album4.id, genreable_type: "Album")

GenreJoin.create!(genre_id: alternative.id, genreable_id: album5.id, genreable_type: "Album")
GenreJoin.create!(genre_id: rock.id, genreable_id: album5.id, genreable_type: "Album")
GenreJoin.create!(genre_id: funk.id, genreable_id: album6.id, genreable_type: "Album")
GenreJoin.create!(genre_id: ambient.id, genreable_id: album6.id, genreable_type: "Album")



# Tracks
GenreJoin.create!(genre_id: blues.id, genreable_id: track1.id, genreable_type: "Track")
GenreJoin.create!(genre_id: rock.id, genreable_id: track1.id, genreable_type: "Track")
GenreJoin.create!(genre_id: experimental.id, genreable_id: track2.id, genreable_type: "Track")
GenreJoin.create!(genre_id: ambient.id, genreable_id: track2.id, genreable_type: "Track")
GenreJoin.create!(genre_id: electronic.id, genreable_id: track2.id, genreable_type: "Track")

GenreJoin.create!(genre_id: hiphop.id, genreable_id: track3.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: track4.id, genreable_type: "Track")
GenreJoin.create!(genre_id: rb_soul.id, genreable_id: track4.id, genreable_type: "Track")
GenreJoin.create!(genre_id: pop.id, genreable_id: track4.id, genreable_type: "Track")

GenreJoin.create!(genre_id: pop.id, genreable_id: track5.id, genreable_type: "Track")
GenreJoin.create!(genre_id: acoustic.id, genreable_id: track5.id, genreable_type: "Track")
GenreJoin.create!(genre_id: alternative.id, genreable_id: track5.id, genreable_type: "Track")

GenreJoin.create!(genre_id: pop.id, genreable_id: track6.id, genreable_type: "Track")
GenreJoin.create!(genre_id: electronic.id, genreable_id: track6.id, genreable_type: "Track")
GenreJoin.create!(genre_id: funk.id, genreable_id: track6.id, genreable_type: "Track")
GenreJoin.create!(genre_id: experimental.id, genreable_id: track6.id, genreable_type: "Track")



