
toys = Toy.create([
										{ name: "Star Wars lego set", description: "This is a lego set of an Imperial Star Destroyer that was used by my son.  All the pieces are included in the set.", gender: "Male", age_range: "0 to 3 years", user_id: 1, city_id: 1, image: "http://i.imgur.com/wRcQp4P.jpg" },
										{ name: "B Building Blocks", description: "Soft rubber block is assorted shapes and sizes that allow children to develop their fine motor skills", gender: "Both", age_range: "0 to 1 year", user_id: 2, city_id: 2, image: "http://ecx.images-amazon.com/images/I/5134nW3RVTL._SY300_.jpg" },
										{ name: "Basketball", description: "Not much to say... it's a basketball", gender: "Both", age_range: "7 to 9 years", user_id: 3, city_id: 3, image: "https://upload.wikimedia.org/wikipedia/commons/7/7a/Basketball.png" },
										{ name: "Barbie Doll", description: "I am giving away a gently used Barbie ballerina that my daughter does not use anymore.  It only comes with what you see in the picture, no other accessories.", gender: "Female", age_range: "6 to 9 years", user_id: 1, city_id: 3, image: "http://i.imgur.com/fbebYos.jpg" }
									])

cities = City.create ([{name: "San Francisco"}, {name: "Lafayette"}, {name: "Berkeley"}])


user1 = User.create([{ f_name: "Michael", l_name: "Rockway", email: "email@email", password: "123456", bio: "Here is a  bio" }])
user2 = User.create([{ f_name: "Zohar", l_name: "Muzafi", email: "email.u@email", password: "123456", bio: "Here is my bio" }])
user3 = User.create([{ f_name: "Andre", l_name: "Andre", email: "andre@email", password: "123456", bio: "Here is a  bio" }])
chat = Chat.create([{}])
message = Message.create([{content: "hi there", user_id:1, chat_id:1}])





