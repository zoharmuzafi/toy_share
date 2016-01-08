# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
###### DELETE THIS LINE AND BELOW ##########
toys = Toy.create([
										{ name: "Legos", description: "Star Wars legos set", gender: "Male", age_range: "0-3", user_id: 1, city_id: 1 },
										{ name: "Barbies", description: "Barbie doll"}, gender: "Female", age_range: "6-9", user_id: 2, city_id: 1 }
									])