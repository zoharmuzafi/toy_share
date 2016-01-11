# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
###### DELETE THIS LINE AND BELOW ##########
toys = Toy.create([
										{ name: "Star Wars lego set", description: "This is a lego set of an Imperial Star Destroyer that was used by my son.  All the pieces are included in the set.", gender: "Male", age_range: "0 to 3 years", user_id: 1, city_id: 1, image: "http://i.imgur.com/wRcQp4P.jpg" },
										{ name: "Barbie Doll", description: "I am giving away a gently used Barbie ballerina that my daughter does not use anymore.  It only comes with what you see in the picture, no other accessories.", gender: "Female", age_range: "6 to 9 years", user_id: 2, city_id: 1, image: "http://i.imgur.com/fbebYos.jpg" }
									])

cities = City.create ([{name: "San Francisco"}, {name: "Lafayette"}])


user1 = User.create([{ f_name: "Michael", l_name: "Rockway", email: "email@email", password: "123456", bio: "Here is a  bio" }])
user2 = User.create([{ f_name: "Zohar", l_name: "Muzafi", email: "email.u@email", password: "123456", bio: "Here is my bio" }])
user3 = User.create([{ f_name: "Andre", l_name: "Andre", email: "andre@email", password: "123456", bio: "Here is a  bio" }])
chat = Chat.create([{}])
message = Message.create([{content: "hi there", user_id:1, chat_id:1}])





