# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'open-uri'


User.destroy_all
Album.destroy_all
Track.destroy_all
Genre.destroy_all
GenreJoin.destroy_all


user1 = User.create!(email: "baeilhyun@appacademy.com", username: "quest", password: "coolbeans", artist_name: "3pac", location: "NYC")
user1_pic = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/megaman.jpg')
user1.pic.attach(io: user1_pic, filename: 'megaman.jpg')

user2 = User.create!(email: "eugene.spoon@appacademy.com", username: "yuzinu", password: "coolbeans", artist_name: "yuzinu", location: "NYC")
user2_pic = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/eugene.jpg')
user2.pic.attach(io: user2_pic, filename:'eugene.jpg')

user3 = User.create!(email: "justin.chops@appacademy.com", username: "justinTime", password: "coolbeans", artist_name: "Then Again", location: "Los Angelos, CA")
user3_pic = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/ein.jpg')
user3.pic.attach(io: user3_pic, filename: 'thenAgain.jpg')


# User 1 Albums:
user1_album1 = Album.create!(artist_id: user1.id, title: "When Can This Be Over?", price: 10.00)
user1_album1_pic = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/album4.jpg')
user1_album1.pic.attach(io: user1_album1_pic, filename: 'user1album1.jpg')

user1_album2 = Album.create!(artist_id: user1.id, title: "I Miss Sleep", price: 15.00)
user1_album2_pic = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/album1.jpg')
user1_album2.pic.attach(io: user1_album2_pic, filename: 'user1album2.jpg')

user1_album3 = Album.create!(artist_id: user1.id, title: "6:00 was Heaven", price: 15.00)
user1_album3_pic = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/album11.jpg')
user1_album3.pic.attach(io: user1_album3_pic, filename: 'user1album3.jpg')


# User 1 Album 1 Tracks:
user1_track1 = Track.create!(artist_id: user1.id, album_id: user1_album1.id, title: "As Ever", price: 1.00)
user1_track1_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/As+Ever+(Mastered).wav')
user1_track1.track.attach(io: user1_track1_song, filename: 'asEver.wav')

user1_track2 = Track.create!(artist_id: user1.id, album_id: user1_album1.id, title: "Bright Lights", price: 1.50)
user1_track2_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Bright+Lights+(Mastered).wav')
user1_track2.track.attach(io: user1_track2_song, filename: 'brightlights.wav')

user1_track3 = Track.create!(artist_id: user1.id, album_id: user1_album1.id, title: "Flowers On the Grass", price: 1.50)
user1_track3_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Flowers+On+The+Grass+(Mastered).wav')
user1_track3.track.attach(io: user1_track3_song, filename: 'flowersOnTheGrass.wav')

user1_track4 = Track.create!(artist_id: user1.id, album_id: user1_album1.id, title: "Got Me Babe", price: 1.50)
user1_track4_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Got+Me+Babe+(Mastered).wav')
user1_track4.track.attach(io: user1_track4_song, filename: 'gotMeBabe.wav')

user1_track5 = Track.create!(artist_id: user1.id, album_id: user1_album1.id, title: "Moving Day", price: 1.50)
user1_track5_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Moving+Day+(Mastered).wav')
user1_track5.track.attach(io: user1_track5_song, filename: 'movingDay.wav')

user1_track6 = Track.create!(artist_id: user1.id, album_id: user1_album1.id, title: "OWITE", price: 1.50)
user1_track6_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/OWITE+(Mastered).wav')
user1_track6.track.attach(io: user1_track6_song, filename: 'owhite.wav')

user1_track7 = Track.create!(artist_id: user1.id, album_id: user1_album1.id, title: "When I'm With", price: 1.50)
user1_track7_song = URI.open("https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/When+I'm+With+(Mastered).wav")
user1_track7.track.attach(io: user1_track7_song, filename: 'whenImWith.wav')

# User 1 Album 2 Tracks
user1_track8 = Track.create!(artist_id: user1.id, album_id: user1_album2.id, title: "As Ever", price: 1.00)
user1_track8_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/As+Ever+(Mastered).wav')
user1_track8.track.attach(io: user1_track8_song, filename: 'asEver.wav')

user1_track9 = Track.create!(artist_id: user1.id, album_id: user1_album2.id, title: "Bright Lights", price: 1.50)
user1_track9_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Bright+Lights+(Mastered).wav')
user1_track9.track.attach(io: user1_track9_song, filename: 'brightlights.wav')

user1_track10 = Track.create!(artist_id: user1.id, album_id: user1_album2.id, title: "Flowers On the Grass", price: 1.50)
user1_track10_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Flowers+On+The+Grass+(Mastered).wav')
user1_track10.track.attach(io: user1_track10_song, filename: 'flowersOnTheGrass.wav')

user1_track11 = Track.create!(artist_id: user1.id, album_id: user1_album2.id, title: "Got Me Babe", price: 1.50)
user1_track11_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Got+Me+Babe+(Mastered).wav')
user1_track11.track.attach(io: user1_track11_song, filename: 'gotMeBabe.wav')

user1_track12 = Track.create!(artist_id: user1.id, album_id: user1_album2.id, title: "Moving Day", price: 1.50)
user1_track12_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Moving+Day+(Mastered).wav')
user1_track12.track.attach(io: user1_track12_song, filename: 'movingDay.wav')

user1_track13 = Track.create!(artist_id: user1.id, album_id: user1_album2.id, title: "OWITE", price: 1.50)
user1_track13_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/OWITE+(Mastered).wav')
user1_track13.track.attach(io: user1_track13_song, filename: 'owhite.wav')

user1_track14 = Track.create!(artist_id: user1.id, album_id: user1_album2.id, title: "When I'm With", price: 1.50)
user1_track14_song = URI.open("https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/When+I'm+With+(Mastered).wav")
user1_track14.track.attach(io: user1_track14_song, filename: 'whenImWith.wav')


# User 1 Album 3 Tracks
user1_track15 = Track.create!(artist_id: user1.id, album_id: user1_album3.id, title: "As Ever", price: 1.00)
user1_track15_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/As+Ever+(Mastered).wav')
user1_track15.track.attach(io: user1_track15_song, filename: 'asEver.wav')

user1_track16 = Track.create!(artist_id: user1.id, album_id: user1_album3.id, title: "Bright Lights", price: 1.50)
user1_track16_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Bright+Lights+(Mastered).wav')
user1_track16.track.attach(io: user1_track16_song, filename: 'brightlights.wav')

user1_track17 = Track.create!(artist_id: user1.id, album_id: user1_album3.id, title: "Flowers On the Grass", price: 1.50)
user1_track17_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Flowers+On+The+Grass+(Mastered).wav')
user1_track17.track.attach(io: user1_track17_song, filename: 'flowersOnTheGrass.wav')

user1_track18 = Track.create!(artist_id: user1.id, album_id: user1_album3.id, title: "Got Me Babe", price: 1.50)
user1_track18_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Got+Me+Babe+(Mastered).wav')
user1_track18.track.attach(io: user1_track18_song, filename: 'gotMeBabe.wav')

user1_track19 = Track.create!(artist_id: user1.id, album_id: user1_album3.id, title: "Moving Day", price: 1.50)
user1_track19_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Moving+Day+(Mastered).wav')
user1_track19.track.attach(io: user1_track19_song, filename: 'movingDay.wav')

user1_track20 = Track.create!(artist_id: user1.id, album_id: user1_album3.id, title: "OWITE", price: 1.50)
user1_track20_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/OWITE+(Mastered).wav')
user1_track20.track.attach(io: user1_track20_song, filename: 'owhite.wav')

user1_track21 = Track.create!(artist_id: user1.id, album_id: user1_album3.id, title: "When I'm With", price: 1.50)
user1_track21_song = URI.open("https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/When+I'm+With+(Mastered).wav")
user1_track21.track.attach(io: user1_track21_song, filename: 'whenImWith.wav')




# User 2 Albums:
user2_album1 = Album.create!(artist_id: user2.id, title: "Caffeine Deficit", price: 11.00)
user2_album1_pic = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/album5.jpg')
user2_album1.pic.attach(io: user2_album1_pic, filename: 'user2album1.jpg')

user2_album2 = Album.create!(artist_id: user2.id, title: "Caffeine Overload", price: 14.00)
user2_album2_pic = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/album7.jpg')
user2_album2.pic.attach(io: user2_album2_pic, filename: 'user2album2.jpg')

user2_album3 = Album.create!(artist_id: user2.id, title: "Junhee", price: 14.00)
user2_album3_pic = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/monkey.jpg')
user2_album3.pic.attach(io: user2_album3_pic, filename: 'user2album3.jpg')


# User 2 Album 1 Tracks:
user2_track1 = Track.create!(artist_id: user2.id, album_id: user2_album1.id, title: "As Ever", price: 1.00)
user2_track1_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/As+Ever+(Mastered).wav')
user2_track1.track.attach(io: user2_track1_song, filename: 'asEver.wav')

user2_track2 = Track.create!(artist_id: user2.id, album_id: user2_album1.id, title: "Bright Lights", price: 1.50)
user2_track2_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Bright+Lights+(Mastered).wav')
user2_track2.track.attach(io: user2_track2_song, filename: 'brightlights.wav')

user2_track3 = Track.create!(artist_id: user2.id, album_id: user2_album1.id, title: "Flowers On the Grass", price: 1.50)
user2_track3_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Flowers+On+The+Grass+(Mastered).wav')
user2_track3.track.attach(io: user2_track3_song, filename: 'flowersOnTheGrass.wav')

user2_track4 = Track.create!(artist_id: user2.id, album_id: user2_album1.id, title: "Got Me Babe", price: 1.50)
user2_track4_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Got+Me+Babe+(Mastered).wav')
user2_track4.track.attach(io: user2_track4_song, filename: 'gotMeBabe.wav')

user2_track5 = Track.create!(artist_id: user2.id, album_id: user2_album1.id, title: "Moving Day", price: 1.50)
user2_track5_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Moving+Day+(Mastered).wav')
user2_track5.track.attach(io: user2_track5_song, filename: 'movingDay.wav')

user2_track6 = Track.create!(artist_id: user2.id, album_id: user2_album1.id, title: "OWITE", price: 1.50)
user2_track6_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/OWITE+(Mastered).wav')
user2_track6.track.attach(io: user2_track6_song, filename: 'owhite.wav')

user2_track7 = Track.create!(artist_id: user2.id, album_id: user2_album1.id, title: "When I'm With", price: 1.50)
user2_track7_song = URI.open("https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/When+I'm+With+(Mastered).wav")
user2_track7.track.attach(io: user2_track7_song, filename: 'whenImWith.wav')

# User 2 Album 2 Tracks
user2_track8 = Track.create!(artist_id: user2.id, album_id: user2_album2.id, title: "As Ever", price: 1.00)
user2_track8_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/As+Ever+(Mastered).wav')
user2_track8.track.attach(io: user2_track8_song, filename: 'asEver.wav')

user2_track9 = Track.create!(artist_id: user2.id, album_id: user2_album2.id, title: "Bright Lights", price: 1.50)
user2_track9_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Bright+Lights+(Mastered).wav')
user2_track9.track.attach(io: user2_track9_song, filename: 'brightlights.wav')

user2_track10 = Track.create!(artist_id: user2.id, album_id: user2_album2.id, title: "Flowers On the Grass", price: 1.50)
user2_track10_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Flowers+On+The+Grass+(Mastered).wav')
user2_track10.track.attach(io: user2_track10_song, filename: 'flowersOnTheGrass.wav')

user2_track11 = Track.create!(artist_id: user2.id, album_id: user2_album2.id, title: "Got Me Babe", price: 1.50)
user2_track11_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Got+Me+Babe+(Mastered).wav')
user2_track11.track.attach(io: user2_track11_song, filename: 'gotMeBabe.wav')

user2_track12 = Track.create!(artist_id: user2.id, album_id: user2_album2.id, title: "Moving Day", price: 1.50)
user2_track12_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Moving+Day+(Mastered).wav')
user2_track12.track.attach(io: user2_track12_song, filename: 'movingDay.wav')

user2_track13 = Track.create!(artist_id: user2.id, album_id: user2_album2.id, title: "OWITE", price: 1.50)
user2_track13_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/OWITE+(Mastered).wav')
user2_track13.track.attach(io: user2_track13_song, filename: 'owhite.wav')

user2_track14 = Track.create!(artist_id: user2.id, album_id: user2_album2.id, title: "When I'm with", price: 1.50)
user2_track14_song = URI.open("https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/When+I'm+With+(Mastered).wav")
user2_track14.track.attach(io: user2_track14_song, filename: 'whenImWith.wav')

# User 2 Album 3 Tracks
user2_track15 = Track.create!(artist_id: user2.id, album_id: user2_album3.id, title: "As Ever", price: 1.00)
user2_track15_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/As+Ever+(Mastered).wav')
user2_track15.track.attach(io: user2_track15_song, filename: 'asEver.wav')

user2_track16 = Track.create!(artist_id: user2.id, album_id: user2_album3.id, title: "Bright Lights", price: 1.50)
user2_track16_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Bright+Lights+(Mastered).wav')
user2_track16.track.attach(io: user2_track16_song, filename: 'brightlights.wav')

user2_track17 = Track.create!(artist_id: user2.id, album_id: user2_album3.id, title: "Flowers On the Grass", price: 1.50)
user2_track17_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Flowers+On+The+Grass+(Mastered).wav')
user2_track17.track.attach(io: user2_track17_song, filename: 'flowersOnTheGrass.wav')

user2_track18 = Track.create!(artist_id: user2.id, album_id: user2_album3.id, title: "Got Me Babe", price: 1.50)
user2_track18_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Got+Me+Babe+(Mastered).wav')
user2_track18.track.attach(io: user2_track18_song, filename: 'gotMeBabe.wav')

user2_track19 = Track.create!(artist_id: user2.id, album_id: user2_album3.id, title: "Moving Day", price: 1.50)
user2_track19_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Moving+Day+(Mastered).wav')
user2_track19.track.attach(io: user2_track19_song, filename: 'movingDay.wav')

user2_track20 = Track.create!(artist_id: user2.id, album_id: user2_album3.id, title: "OWITE", price: 1.50)
user2_track20_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/OWITE+(Mastered).wav')
user2_track20.track.attach(io: user2_track20_song, filename: 'owhite.wav')

user2_track21 = Track.create!(artist_id: user2.id, album_id: user2_album3.id, title: "When I'm with", price: 1.50)
user2_track21_song = URI.open("https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/When+I'm+With+(Mastered).wav")
user2_track21.track.attach(io: user2_track21_song, filename: 'whenImWith.wav')



# User 3 Albums
user3_album1 = Album.create!(artist_id: user3.id, title: "Florence Place", price: 15.00)
user3_album1_pic = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/florence_cloud.png')
user3_album1.pic.attach(io: user3_album1_pic, filename: 'user3album1.jpg')

user3_album2 = Album.create!(artist_id: user3.id, title: "False Romance", price: 20.00)
user3_album2_pic = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/banksy_donuts.jpg')
user3_album2.pic.attach(io: user3_album2_pic, filename: 'user3album2.jpg')

user3_album3 = Album.create!(artist_id: user3.id, title: "sun.set! blvd", price: 20.00)
user3_album3_pic = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/album3.jpg')
user3_album3.pic.attach(io: user3_album3_pic, filename: 'user3album3.jpg')


# User 3 Album 1 Tracks:
user3_track1 = Track.create!(artist_id: user3.id, album_id: user3_album1.id, title: "As Ever", price: 1.00)
user3_track1_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/As+Ever+(Mastered).wav')
user3_track1.track.attach(io: user3_track1_song, filename: 'asEver.wav')

user3_track2 = Track.create!(artist_id: user3.id, album_id: user3_album1.id, title: "Bright Lights", price: 1.50)
user3_track2_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Bright+Lights+(Mastered).wav')
user3_track2.track.attach(io: user3_track2_song, filename: 'brightlights.wav')

user3_track3 = Track.create!(artist_id: user3.id, album_id: user3_album1.id, title: "Flowers On the Grass", price: 1.50)
user3_track3_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Flowers+On+The+Grass+(Mastered).wav')
user3_track3.track.attach(io: user3_track3_song, filename: 'flowersOnTheGrass.wav')

user3_track4 = Track.create!(artist_id: user3.id, album_id: user3_album1.id, title: "Got Me Babe", price: 1.50)
user3_track4_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Got+Me+Babe+(Mastered).wav')
user3_track4.track.attach(io: user3_track4_song, filename: 'gotMeBabe.wav')

user3_track5 = Track.create!(artist_id: user3.id, album_id: user3_album1.id, title: "Moving Day", price: 1.50)
user3_track5_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Moving+Day+(Mastered).wav')
user3_track5.track.attach(io: user3_track5_song, filename: 'movingDay.wav')

user3_track6 = Track.create!(artist_id: user3.id, album_id: user3_album1.id, title: "OWITE", price: 1.50)
user3_track6_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/OWITE+(Mastered).wav')
user3_track6.track.attach(io: user3_track6_song, filename: 'owhite.wav')

user3_track7 = Track.create!(artist_id: user3.id, album_id: user3_album1.id, title: "When I'm With", price: 1.50)
user3_track7_song = URI.open("https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/When+I'm+With+(Mastered).wav")
user3_track7.track.attach(io: user3_track7_song, filename: 'whenImWith.wav')

# User 3 Album 2 Tracks
user3_track8 = Track.create!(artist_id: user3.id, album_id: user3_album2.id, title: "As Ever", price: 1.00)
user3_track8_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/As+Ever+(Mastered).wav')
user3_track8.track.attach(io: user3_track8_song, filename: 'asEver.wav')

user3_track9 = Track.create!(artist_id: user3.id, album_id: user3_album2.id, title: "Bright Lights", price: 1.50)
user3_track9_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Bright+Lights+(Mastered).wav')
user3_track9.track.attach(io: user3_track9_song, filename: 'brightlights.wav')

user3_track10 = Track.create!(artist_id: user3.id, album_id: user3_album2.id, title: "Flowers On the Grass", price: 1.50)
user3_track10_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Flowers+On+The+Grass+(Mastered).wav')
user3_track10.track.attach(io: user3_track10_song, filename: 'flowersOnTheGrass.wav')

user3_track11 = Track.create!(artist_id: user3.id, album_id: user3_album2.id, title: "Got Me Babe", price: 1.50)
user3_track11_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Got+Me+Babe+(Mastered).wav')
user3_track11.track.attach(io: user3_track11_song, filename: 'gotMeBabe.wav')

user3_track12 = Track.create!(artist_id: user3.id, album_id: user3_album2.id, title: "Moving Day", price: 1.50)
user3_track12_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Moving+Day+(Mastered).wav')
user3_track12.track.attach(io: user3_track12_song, filename: 'movingDay.wav')

user3_track13 = Track.create!(artist_id: user3.id, album_id: user3_album2.id, title: "OWITE", price: 1.50)
user3_track13_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/OWITE+(Mastered).wav')
user3_track13.track.attach(io: user3_track13_song, filename: 'owhite.wav')

user3_track14 = Track.create!(artist_id: user3.id, album_id: user3_album2.id, title: "When I'm with", price: 1.50)
user3_track14_song = URI.open("https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/When+I'm+With+(Mastered).wav")
user3_track14.track.attach(io: user3_track14_song, filename: 'whenImWith.wav')


# User 3 Album 3 Tracks
user3_track15 = Track.create!(artist_id: user3.id, album_id: user3_album3.id, title: "As Ever", price: 1.00)
user3_track15_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/As+Ever+(Mastered).wav')
user3_track15.track.attach(io: user3_track15_song, filename: 'asEver.wav')

user3_track16 = Track.create!(artist_id: user3.id, album_id: user3_album3.id, title: "Bright Lights", price: 1.50)
user3_track16_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Bright+Lights+(Mastered).wav')
user3_track16.track.attach(io: user3_track16_song, filename: 'brightlights.wav')

user3_track17 = Track.create!(artist_id: user3.id, album_id: user3_album3.id, title: "Flowers On the Grass", price: 1.50)
user3_track17_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Flowers+On+The+Grass+(Mastered).wav')
user3_track17.track.attach(io: user3_track17_song, filename: 'flowersOnTheGrass.wav')

user3_track18 = Track.create!(artist_id: user3.id, album_id: user3_album3.id, title: "Got Me Babe", price: 1.50)
user3_track18_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Got+Me+Babe+(Mastered).wav')
user3_track18.track.attach(io: user3_track18_song, filename: 'gotMeBabe.wav')

user3_track19 = Track.create!(artist_id: user3.id, album_id: user3_album3.id, title: "Moving Day", price: 1.50)
user3_track19_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/Moving+Day+(Mastered).wav')
user3_track19.track.attach(io: user3_track19_song, filename: 'movingDay.wav')

user3_track20 = Track.create!(artist_id: user3.id, album_id: user3_album3.id, title: "OWITE", price: 1.50)
user3_track20_song = URI.open('https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/OWITE+(Mastered).wav')
user3_track20.track.attach(io: user3_track20_song, filename: 'owhite.wav')

user3_track21 = Track.create!(artist_id: user3.id, album_id: user3_album3.id, title: "When I'm with", price: 1.50)
user3_track21_song = URI.open("https://foosiccamp-seeds.s3.amazonaws.com/justin_cho_music/When+I'm+With+(Mastered).wav")
user3_track21.track.attach(io: user3_track21_song, filename: 'whenImWith.wav')



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


# artists genres
GenreJoin.create!(genre_id: blues.id, genreable_id: user1.id, genreable_type: "User")
GenreJoin.create!(genre_id: alternative.id, genreable_id: user1.id, genreable_type: "User")
GenreJoin.create!(genre_id: experimental.id, genreable_id: user1.id, genreable_type: "User")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2.id, genreable_type: "User")
GenreJoin.create!(genre_id: rb_soul.id, genreable_id: user2.id, genreable_type: "User")
GenreJoin.create!(genre_id: pop.id, genreable_id: user3.id, genreable_type: "User")
GenreJoin.create!(genre_id: alternative.id, genreable_id: user3.id, genreable_type: "User")
GenreJoin.create!(genre_id: acoustic.id, genreable_id: user3.id, genreable_type: "User")

# albums genres
GenreJoin.create!(genre_id: blues.id, genreable_id: user1_album1.id, genreable_type: "Album")
GenreJoin.create!(genre_id: rock.id, genreable_id: user1_album1.id, genreable_type: "Album")
GenreJoin.create!(genre_id: experimental.id, genreable_id: user1_album2.id, genreable_type: "Album")
GenreJoin.create!(genre_id: electronic.id, genreable_id: user1_album2.id, genreable_type: "Album")
GenreJoin.create!(genre_id: pop.id, genreable_id: user1_album3.id, genreable_type: "Album")
GenreJoin.create!(genre_id: world.id, genreable_id: user1_album3.id, genreable_type: "Album")

GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_album1.id, genreable_type: "Album")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_album2.id, genreable_type: "Album")
GenreJoin.create!(genre_id: rb_soul.id, genreable_id: user2_album2.id, genreable_type: "Album")
GenreJoin.create!(genre_id: electronic.id, genreable_id: user2_album3.id, genreable_type: "Album")

GenreJoin.create!(genre_id: alternative.id, genreable_id: user3_album1.id, genreable_type: "Album")
GenreJoin.create!(genre_id: rock.id, genreable_id: user3_album1.id, genreable_type: "Album")
GenreJoin.create!(genre_id: funk.id, genreable_id: user3_album2.id, genreable_type: "Album")
GenreJoin.create!(genre_id: ambient.id, genreable_id: user3_album2.id, genreable_type: "Album")
GenreJoin.create!(genre_id: jazz.id, genreable_id: user3_album3.id, genreable_type: "Album")
GenreJoin.create!(genre_id: country.id, genreable_id: user3_album3.id, genreable_type: "Album")




# User 1 Tracks genres
GenreJoin.create!(genre_id: blues.id, genreable_id: user1_track1.id, genreable_type: "Track")
GenreJoin.create!(genre_id: blues.id, genreable_id: user1_track2.id, genreable_type: "Track")
GenreJoin.create!(genre_id: blues.id, genreable_id: user1_track3.id, genreable_type: "Track")
GenreJoin.create!(genre_id: blues.id, genreable_id: user1_track4.id, genreable_type: "Track")
GenreJoin.create!(genre_id: rock.id, genreable_id: user1_track5.id, genreable_type: "Track")
GenreJoin.create!(genre_id: rock.id, genreable_id: user1_track6.id, genreable_type: "Track")
GenreJoin.create!(genre_id: rock.id, genreable_id: user1_track7.id, genreable_type: "Track")
GenreJoin.create!(genre_id: electronic.id, genreable_id: user1_track8.id, genreable_type: "Track")
GenreJoin.create!(genre_id: electronic.id, genreable_id: user1_track9.id, genreable_type: "Track")
GenreJoin.create!(genre_id: electronic.id, genreable_id: user1_track10.id, genreable_type: "Track")
GenreJoin.create!(genre_id: electronic.id, genreable_id: user1_track11.id, genreable_type: "Track")
GenreJoin.create!(genre_id: experimental.id, genreable_id: user1_track12.id, genreable_type: "Track")
GenreJoin.create!(genre_id: experimental.id, genreable_id: user1_track13.id, genreable_type: "Track")
GenreJoin.create!(genre_id: experimental.id, genreable_id: user1_track14.id, genreable_type: "Track")
GenreJoin.create!(genre_id: electronic.id, genreable_id: user1_track15.id, genreable_type: "Track")
GenreJoin.create!(genre_id: electronic.id, genreable_id: user1_track16.id, genreable_type: "Track")
GenreJoin.create!(genre_id: electronic.id, genreable_id: user1_track17.id, genreable_type: "Track")
GenreJoin.create!(genre_id: electronic.id, genreable_id: user1_track18.id, genreable_type: "Track")
GenreJoin.create!(genre_id: experimental.id, genreable_id: user1_track19.id, genreable_type: "Track")
GenreJoin.create!(genre_id: experimental.id, genreable_id: user1_track20.id, genreable_type: "Track")
GenreJoin.create!(genre_id: experimental.id, genreable_id: user1_track21.id, genreable_type: "Track")

# user 2 tracks genres
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_track1.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_track2.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_track3.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_track4.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_track5.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_track6.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_track7.id, genreable_type: "Track")
GenreJoin.create!(genre_id: rb_soul.id, genreable_id: user2_track8.id, genreable_type: "Track")
GenreJoin.create!(genre_id: rb_soul.id, genreable_id: user2_track9.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_track10.id, genreable_type: "Track")
GenreJoin.create!(genre_id: rb_soul.id, genreable_id: user2_track11.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_track12.id, genreable_type: "Track")
GenreJoin.create!(genre_id: rb_soul.id, genreable_id: user2_track13.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_track14.id, genreable_type: "Track")
GenreJoin.create!(genre_id: electronic.id, genreable_id: user2_track15.id, genreable_type: "Track")
GenreJoin.create!(genre_id: electronic.id, genreable_id: user2_track16.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_track17.id, genreable_type: "Track")
GenreJoin.create!(genre_id: electronic.id, genreable_id: user2_track18.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_track19.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user2_track20.id, genreable_type: "Track")
GenreJoin.create!(genre_id: experimental.id, genreable_id: user2_track21.id, genreable_type: "Track")



GenreJoin.create!(genre_id: alternative.id, genreable_id: user3_track1.id, genreable_type: "Track")
GenreJoin.create!(genre_id: rock.id, genreable_id: user3_track1.id, genreable_type: "Track")
GenreJoin.create!(genre_id: rock.id, genreable_id: user3_track2.id, genreable_type: "Track")
GenreJoin.create!(genre_id: alternative.id, genreable_id: user3_track3.id, genreable_type: "Track")
GenreJoin.create!(genre_id: rock.id, genreable_id: user3_track3.id, genreable_type: "Track")
GenreJoin.create!(genre_id: acoustic.id, genreable_id: user3_track4.id, genreable_type: "Track")
GenreJoin.create!(genre_id: world.id, genreable_id: user3_track4.id, genreable_type: "Track")
GenreJoin.create!(genre_id: alternative.id, genreable_id: user3_track5.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user3_track6.id, genreable_type: "Track")
GenreJoin.create!(genre_id: alternative.id, genreable_id: user3_track7.id, genreable_type: "Track")
GenreJoin.create!(genre_id: funk.id, genreable_id: user3_track8.id, genreable_type: "Track")
GenreJoin.create!(genre_id: jazz.id, genreable_id: user3_track8.id, genreable_type: "Track")
GenreJoin.create!(genre_id: funk.id, genreable_id: user3_track9.id, genreable_type: "Track")
GenreJoin.create!(genre_id: funk.id, genreable_id: user3_track10.id, genreable_type: "Track")
GenreJoin.create!(genre_id: ambient.id, genreable_id: user3_track10.id, genreable_type: "Track")
GenreJoin.create!(genre_id: ambient.id, genreable_id: user3_track11.id, genreable_type: "Track")
GenreJoin.create!(genre_id: hiphop.id, genreable_id: user3_track12.id, genreable_type: "Track")
GenreJoin.create!(genre_id: world.id, genreable_id: user3_track13.id, genreable_type: "Track")
GenreJoin.create!(genre_id: pop.id, genreable_id: user3_track14.id, genreable_type: "Track")
GenreJoin.create!(genre_id: funk.id, genreable_id: user3_track14.id, genreable_type: "Track")
GenreJoin.create!(genre_id: jazz.id, genreable_id: user3_track15.id, genreable_type: "Track")
GenreJoin.create!(genre_id: country.id, genreable_id: user3_track15.id, genreable_type: "Track")
GenreJoin.create!(genre_id: jazz.id, genreable_id: user3_track16.id, genreable_type: "Track")
GenreJoin.create!(genre_id: country.id, genreable_id: user3_track17.id, genreable_type: "Track")
GenreJoin.create!(genre_id: jazz.id, genreable_id: user3_track18.id, genreable_type: "Track")
GenreJoin.create!(genre_id: country.id, genreable_id: user3_track19.id, genreable_type: "Track")
GenreJoin.create!(genre_id: jazz.id, genreable_id: user3_track20.id, genreable_type: "Track")
GenreJoin.create!(genre_id: country.id, genreable_id: user3_track21.id, genreable_type: "Track")
GenreJoin.create!(genre_id: experimental.id, genreable_id: user3_track21.id, genreable_type: "Track")
GenreJoin.create!(genre_id: electronic.id, genreable_id: user3_track21.id, genreable_type: "Track")

