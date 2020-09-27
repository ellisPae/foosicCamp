# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Genres Table:
electronic = Genre.create!(category: "electronic")
metal = Genre.create!(category: "metal")
rock = Genre.create!(category: "rock")
alternative = Genre.create!(category: "alternative")
hiphop = Genre.create!(category: 'hip-hop/rap')
experimental = Genre.create!(category: 'experimental')
punk = Genre = Genre.create!(category: 'punk')
pop = Genre.create!(category: "pop")
ambient = Genre.create!(category: "ambient")
world = Genre.create!(category: "world")
jazz = Genre.create!(category: "jazz")
acoustic = Genre.create!(category: "acoustic")
funk = Genre.create!(category: "funk")
rb_soul = Genre.create!(category: "r%b/soul")
classical = Genre.create!(category: "classical")
country = Genre.create!(category: "country")
blues = Genre.create!(category: "blues")
latin = Genre.create!(category: "latin")