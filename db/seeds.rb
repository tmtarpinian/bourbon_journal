# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bourbon1 = Bourbon.create(name: "David Nicholson 1843", distillery: "Lux Row Distillers", proof: 100)
bourbon2 = Bourbon.create(name: "Larceny", distillery: "Old Fitzgerald Distillery", proof: 92, flavornotes: "vanilla")
bourbon3 = Bourbon.create(name: "Wild Turkey 101", distillery: "Wild Turkey Distilling Co.", proof: 101)
bourbon4 = Bourbon.create(name: "Butcher's Cut", distillery: "Detroit City Distillery", proof: 116, aged: 3)
